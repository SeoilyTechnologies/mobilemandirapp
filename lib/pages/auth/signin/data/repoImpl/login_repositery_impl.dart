import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:either_dart/src/either.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:google_sign_in/google_sign_in.dart';

import 'package:http/http.dart' as http;
import 'package:mandirapp/pages/auth/signin/data/entity/login_response.dart';

//import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import '../../../../../common/network/api_services.dart';
import '../../../../../common/network/app_constant.dart';
import '../../../../../common/network/failure.dart';
import '../../../../../common/service_locator/setivelocator.dart';
import '../../../../../common/utils/utils.dart';
import '../../domain/repositery/login_repositery.dart';
import '../entity/forceupdate_response/force_update_response.dart';
import '../entity/sociallogin/social_login_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class LoginRepositeryImpl implements LoginRepositery {
  final ApiServices _apiServices = getIt<ApiServices>();

  LoginRepositeryImpl();

  // 🔹 Google place autocomplete
  @override
  Future<Either<Failure, List<dynamic>>> getPlaceSuggestions(
    String input,
    String sessionToken,
  ) async {
    try {
      final response = await _apiServices.googlePlace(input, sessionToken);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return Right(data['predictions']);
      } else {
        return Left(Failure("Failed to fetch suggestions"));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  // 🔹 Get lat/lng from placeId
  @override
  Future<Either<Failure, Map<String, dynamic>>> getLatLngFromPlaceId(
    String placeId,
    String sessionToken,
  ) async {
    try {
      final response = await _apiServices.getLatLngWithPlaceId(
        placeId,
        sessionToken,
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final location = data['result']['geometry']['location'];
        return Right({"lat": location['lat'], "lng": location['lng']});
      } else {
        return Left(Failure("Failed to fetch location"));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, LoginResponse>> socailLogin(
    Map<String, dynamic> loginData,
  ) async {
    try {
      http.Response response = await _apiServices.post(
        AppConstant.socialLogin,
        loginData,
        useDefaultHeaders: false,
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        final LoginResponse user = LoginResponse.fromJson(responseData);
        return Right(user);
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure("$e"));
    }
  }

  @override
  Future<Either<Failure, LoginResponse>> sendPhoneOtp(
    Map<String, dynamic> data,
  ) async {
    try {

      final response = await _apiServices.post(
        AppConstant.loginWithPhoneno,
        data,
        isJson: false,
        useDefaultHeaders: false,
      );

      final responseData = jsonDecode(response.body);

      if (responseData['success']) {
        return Right(LoginResponse.fromJson(responseData));
      } else {
        return Left(Failure(responseData['message'] ?? "Something went wrong"));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, LoginResponse>> loginAccount(
    Map<String, dynamic> userData,
  ) async {
    try {
      http.Response response = await _apiServices.post(
        AppConstant.login,
        userData,
        isJson: true,
        useDefaultHeaders: true,
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success']) {
          final LoginResponse user = LoginResponse.fromJson(responseData);
          return Right(user);
        } else {
          return Left(Failure(responseData['success']));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure("$e"));
    }
  }

  @override
  Future<Either<Failure, LoginResponse>> guestLogin(
    Map<String, dynamic> userData,
  ) async {
    try {
      http.Response response = await _apiServices.post(
        AppConstant.guestLogin,
        userData,
        isJson: true,
        useDefaultHeaders: true,
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success']) {
          final LoginResponse user = LoginResponse.fromJson(responseData);
          return Right(user);
        } else {
          return Left(Failure(responseData['success']));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure("$e"));
    }
  }

  @override
  Future<Either<Failure, SocialLoginEntity>> googleLogin() async {
    try {
      await FirebaseAuth.instance.signOut();

      final GoogleSignIn signIn = GoogleSignIn.instance;

      await signIn.initialize(
        serverClientId:
        "192317191997-pvobcao384t3ef01altbfcqa717mm0gf.apps.googleusercontent.com",
      );

      await signIn.signOut();

      final GoogleSignInAccount account = await signIn.authenticate();

      final GoogleSignInAuthentication googleAuth =
          account.authentication;

      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential =
      await FirebaseAuth.instance.signInWithCredential(
        credential,
      );

      final String? firebaseToken =
      await userCredential.user?.getIdToken();


      return Right(
        SocialLoginEntity(
          firebaseToken: firebaseToken ?? "",
          uid: userCredential.user?.uid ?? "",
          email: userCredential.user?.email,
          name: userCredential.user?.displayName,
          photoUrl: userCredential.user?.photoURL,
          provider: SocialLoginProvider.google,
        ),
      );
    } on GoogleSignInException catch (e) {

      // User ne popup close kiya ya back press kiya
      if (e.code == GoogleSignInExceptionCode.canceled) {
        return Left(Failure("Login Canceled"));
      }

      return Left(Failure("Google sign in failed"));
    } on FirebaseAuthException catch (e) {

      return Left(
        Failure(e.message ?? "Google sign in failed"),
      );
    } catch (e) {

      return Left(
        Failure("Something went wrong"),
      );
    }
  }
  @override
  Future<Either<Failure, SocialLoginEntity>> appleLogin() async {
    try {
      final result = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final OAuthCredential credential = OAuthProvider("apple.com").credential(
        idToken: result.identityToken,
        accessToken: result.authorizationCode,
      );

      final UserCredential authResult = await FirebaseAuth.instance
          .signInWithCredential(credential);

      final User? user = authResult.user;

      if (user == null) {
        return Left(Failure("Apple user not found"));
      }

      final String? firebaseToken = await user.getIdToken();

      String? fullName = user.displayName;

      if (fullName == null || fullName.isEmpty) {
        fullName = [
          result.givenName,
          result.familyName,
        ].where((e) => e != null && e.isNotEmpty).join(' ');

        if (fullName.isEmpty) {
          fullName = null;
        }
      }

      return Right(
        SocialLoginEntity(
          firebaseToken: firebaseToken ?? "",
          uid: user.uid,
          email: user.email ?? result.email,
          name: user.displayName ?? fullName,
          photoUrl: user.photoURL,
          provider: SocialLoginProvider.apple,
        ),
      );
    } on FirebaseAuthException catch (e) {

      return Left(Failure(e.message ?? "Apple login failed"));
    } catch (e) {

      return Left(Failure("Apple login failed"));
    }
  }

  @override
  Future<Either<Failure, LoginResponse>> updateProfile(
    Map<String, dynamic> loginData, {
    File? file,
  }) async {
    try {
      http.Response response = await _apiServices.multiPartImage(
        url: AppConstant.updateUserProfile,
        fileName: "profile_image",
        image: file,
        fields: loginData,
        useDefaultHeaders: true,
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success']) {
          final LoginResponse user = LoginResponse.fromJson(responseData);
          return Right(user);
        } else {
          return Left(Failure(responseData['success']));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure("$e"));
    }
  }

  @override
  Future<Either<Failure, LoginResponse>> getUserProfile(
    Map<String, dynamic> userData,
  ) async {
    try {
      http.Response response = await _apiServices.get(
        AppConstant.getUserProfile,
        useDefaultHeaders: true,
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success']) {
          final LoginResponse user = LoginResponse.fromJson(responseData);
          return Right(user);
        } else {
          return Left(Failure(responseData['success']));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure("$e"));
    }
  }

  @override
  Future<Either<Failure, ForceUpdateData>> forceUpdate() async {
    try {
      http.Response response = await _apiServices.get(
        AppConstant.appVersion,
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        if (responseData['success']) {
          final ForceUpdateData user = ForceUpdateData.fromJson(
            responseData['data'],
          ); // ✅ FIX

          return Right(user);
        } else {
          return Left(Failure("API returned false"));
        }
      } else {
        final errorMessage = _extractErrorMessage(response.body);
        return Left(Failure(errorMessage));
      }
    } catch (e) {
      return Left(Failure("$e"));
    }
  }

  String _extractErrorMessage(String responseBody) {
    try {
      final Map<String, dynamic> errorData = jsonDecode(responseBody);
      return errorData['message'] ?? 'Unknown error occurred';
    } catch (e) {
      return 'Something goes wrong';
    }
  }

  String _generateNonce([int length = 32]) {
    final charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(
      length,
      (_) => charset[random.nextInt(charset.length)],
    ).join();
  }

  String _sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }
}
