import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'l10n_en.dart';
import 'l10n_hi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of L10n
/// returned by `L10n.of(context)`.
///
/// Applications need to include `L10n.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/l10n.dart';
///
/// return MaterialApp(
///   localizationsDelegates: L10n.localizationsDelegates,
///   supportedLocales: L10n.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the L10n.supportedLocales
/// property.
abstract class L10n {
  L10n(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static L10n? of(BuildContext context) {
    return Localizations.of<L10n>(context, L10n);
  }

  static const LocalizationsDelegate<L10n> delegate = _L10nDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('hi'),
  ];

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @emailHint.
  ///
  /// In en, this message translates to:
  /// **'jon@gmail.com'**
  String get emailHint;

  /// No description provided for @phoneHint.
  ///
  /// In en, this message translates to:
  /// **'+91 9876543210'**
  String get phoneHint;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'••••••'**
  String get password;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @signUpWithApple.
  ///
  /// In en, this message translates to:
  /// **'Sign up with Apple'**
  String get signUpWithApple;

  /// No description provided for @signUpWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Sign up with Google'**
  String get signUpWithGoogle;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAccount;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get or;

  /// No description provided for @continuee.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continuee;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot your password?'**
  String get forgotPassword;

  /// No description provided for @signInWithApple.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Apple'**
  String get signInWithApple;

  /// No description provided for @signInWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Google'**
  String get signInWithGoogle;

  /// No description provided for @newToApp.
  ///
  /// In en, this message translates to:
  /// **'New to Eurotrain?'**
  String get newToApp;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @otpVerification.
  ///
  /// In en, this message translates to:
  /// **'OTP Verification'**
  String get otpVerification;

  /// No description provided for @otpSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Enter the verification code we just sent to your email address'**
  String get otpSubtitle;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @didntReceiveCode.
  ///
  /// In en, this message translates to:
  /// **'Didn’t receive a code?'**
  String get didntReceiveCode;

  /// No description provided for @resend.
  ///
  /// In en, this message translates to:
  /// **'Resend'**
  String get resend;

  /// No description provided for @guestLogin.
  ///
  /// In en, this message translates to:
  /// **'Guest Login'**
  String get guestLogin;

  /// No description provided for @pleaseEnterValidPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid phone number'**
  String get pleaseEnterValidPhoneNumber;

  /// No description provided for @permissionRequired.
  ///
  /// In en, this message translates to:
  /// **'Permission Required'**
  String get permissionRequired;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @allow.
  ///
  /// In en, this message translates to:
  /// **'Allow'**
  String get allow;

  /// No description provided for @storagePermissionRequired.
  ///
  /// In en, this message translates to:
  /// **'Storage Permission Required'**
  String get storagePermissionRequired;

  /// No description provided for @failedToPickFile.
  ///
  /// In en, this message translates to:
  /// **'Failed to pick file'**
  String get failedToPickFile;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @pleaseEnterName.
  ///
  /// In en, this message translates to:
  /// **'Please enter name'**
  String get pleaseEnterName;

  /// No description provided for @pleaseEnterEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter email'**
  String get pleaseEnterEmail;

  /// No description provided for @pleaseEnterPhone.
  ///
  /// In en, this message translates to:
  /// **'Please enter phone'**
  String get pleaseEnterPhone;

  /// No description provided for @pleaseEnterDate.
  ///
  /// In en, this message translates to:
  /// **'Please enter date'**
  String get pleaseEnterDate;

  /// No description provided for @pleaseEnterLocation.
  ///
  /// In en, this message translates to:
  /// **'Please enter location'**
  String get pleaseEnterLocation;

  /// No description provided for @pleaseEnter6DigitOtp.
  ///
  /// In en, this message translates to:
  /// **'Please enter 6 digit OTP.'**
  String get pleaseEnter6DigitOtp;

  /// No description provided for @pleaseEnterOtp.
  ///
  /// In en, this message translates to:
  /// **'Please enter OTP.'**
  String get pleaseEnterOtp;

  /// No description provided for @pleaseAcceptTerms.
  ///
  /// In en, this message translates to:
  /// **'Please accept Terms & Conditions'**
  String get pleaseAcceptTerms;

  /// No description provided for @iAcceptThe.
  ///
  /// In en, this message translates to:
  /// **'I accept the '**
  String get iAcceptThe;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get termsAndConditions;

  /// No description provided for @communicationConsent.
  ///
  /// In en, this message translates to:
  /// **' and would like to receive communication related to services, offers & updates from Mobile Mandir via SMS, E-mail, Google RCS and WhatsApp.'**
  String get communicationConsent;

  /// No description provided for @addGod.
  ///
  /// In en, this message translates to:
  /// **'ADD GOD'**
  String get addGod;

  /// No description provided for @addTemple.
  ///
  /// In en, this message translates to:
  /// **'ADD TEMPLE'**
  String get addTemple;

  /// No description provided for @aarti.
  ///
  /// In en, this message translates to:
  /// **'Aarti'**
  String get aarti;

  /// No description provided for @aartiBhajan.
  ///
  /// In en, this message translates to:
  /// **'Aarti & Bhajan'**
  String get aartiBhajan;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @aboutTemple.
  ///
  /// In en, this message translates to:
  /// **'About Temple'**
  String get aboutTemple;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @allAvailableSevas.
  ///
  /// In en, this message translates to:
  /// **'All Available Sevas'**
  String get allAvailableSevas;

  /// No description provided for @allSantPujaris.
  ///
  /// In en, this message translates to:
  /// **'All Sant & Pujaris'**
  String get allSantPujaris;

  /// No description provided for @logoutConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logout?'**
  String get logoutConfirmation;

  /// No description provided for @astrologer.
  ///
  /// In en, this message translates to:
  /// **'Astrologer'**
  String get astrologer;

  /// No description provided for @avatarsForms.
  ///
  /// In en, this message translates to:
  /// **'Avatars & Forms'**
  String get avatarsForms;

  /// No description provided for @birthPlace.
  ///
  /// In en, this message translates to:
  /// **'Birth Place'**
  String get birthPlace;

  /// No description provided for @calendar.
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get calendar;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @chalisa.
  ///
  /// In en, this message translates to:
  /// **'Chalisa'**
  String get chalisa;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @confirmNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm new password'**
  String get confirmNewPassword;

  /// No description provided for @continueText.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText;

  /// No description provided for @darshan.
  ///
  /// In en, this message translates to:
  /// **'Darshan'**
  String get darshan;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccount;

  /// No description provided for @direction.
  ///
  /// In en, this message translates to:
  /// **'Direction'**
  String get direction;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @exploreNearby.
  ///
  /// In en, this message translates to:
  /// **'Explore Nearby'**
  String get exploreNearby;

  /// No description provided for @failedToLoadGods.
  ///
  /// In en, this message translates to:
  /// **'Failed to load gods'**
  String get failedToLoadGods;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @festivalsOccasions.
  ///
  /// In en, this message translates to:
  /// **'Festivals & Occasions'**
  String get festivalsOccasions;

  /// No description provided for @followers.
  ///
  /// In en, this message translates to:
  /// **'Followers'**
  String get followers;

  /// No description provided for @forYou.
  ///
  /// In en, this message translates to:
  /// **'For You'**
  String get forYou;

  /// No description provided for @ganeshAarti.
  ///
  /// In en, this message translates to:
  /// **'Ganesh Aarti'**
  String get ganeshAarti;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @god.
  ///
  /// In en, this message translates to:
  /// **'God'**
  String get god;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @inReview.
  ///
  /// In en, this message translates to:
  /// **'In Review'**
  String get inReview;

  /// No description provided for @jaap.
  ///
  /// In en, this message translates to:
  /// **'Jaap'**
  String get jaap;

  /// No description provided for @jaapMala.
  ///
  /// In en, this message translates to:
  /// **'Jaap Mala'**
  String get jaapMala;

  /// No description provided for @jaapMalaHistory.
  ///
  /// In en, this message translates to:
  /// **'Jaap Mala History'**
  String get jaapMalaHistory;

  /// No description provided for @jaiGaneshDeva.
  ///
  /// In en, this message translates to:
  /// **'Jai Ganesh Deva'**
  String get jaiGaneshDeva;

  /// No description provided for @katha.
  ///
  /// In en, this message translates to:
  /// **'Katha'**
  String get katha;

  /// No description provided for @lakshmiAarti.
  ///
  /// In en, this message translates to:
  /// **'Lakshmi Aarti'**
  String get lakshmiAarti;

  /// No description provided for @live.
  ///
  /// In en, this message translates to:
  /// **'Live'**
  String get live;

  /// No description provided for @liveDarshan.
  ///
  /// In en, this message translates to:
  /// **'Live Darshan'**
  String get liveDarshan;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @lyrics.
  ///
  /// In en, this message translates to:
  /// **'Lyrics'**
  String get lyrics;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @mantra.
  ///
  /// In en, this message translates to:
  /// **'Mantra'**
  String get mantra;

  /// No description provided for @myFavorites.
  ///
  /// In en, this message translates to:
  /// **'My Favorites'**
  String get myFavorites;

  /// No description provided for @myProfile.
  ///
  /// In en, this message translates to:
  /// **'My Profile'**
  String get myProfile;

  /// No description provided for @mySeva.
  ///
  /// In en, this message translates to:
  /// **'My Seva'**
  String get mySeva;

  /// No description provided for @temples.
  ///
  /// In en, this message translates to:
  /// **'Temples'**
  String get temples;

  /// No description provided for @paksha.
  ///
  /// In en, this message translates to:
  /// **'Paksha'**
  String get paksha;

  /// No description provided for @nakshatra.
  ///
  /// In en, this message translates to:
  /// **'Nakshatra'**
  String get nakshatra;

  /// No description provided for @startNextJaap.
  ///
  /// In en, this message translates to:
  /// **'Start Next Jaap'**
  String get startNextJaap;

  /// No description provided for @searchAartiHint.
  ///
  /// In en, this message translates to:
  /// **'Search aarti, bhajan or deity...'**
  String get searchAartiHint;

  /// No description provided for @nextDays.
  ///
  /// In en, this message translates to:
  /// **'Next Days'**
  String get nextDays;

  /// No description provided for @naamJaap.
  ///
  /// In en, this message translates to:
  /// **'Naam Jaap'**
  String get naamJaap;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @omJaiLakshmiMata.
  ///
  /// In en, this message translates to:
  /// **'Om Jai Lakshmi Mata'**
  String get omJaiLakshmiMata;

  /// No description provided for @omJaiShivOmkara.
  ///
  /// In en, this message translates to:
  /// **'Om Jai Shiv Omkara'**
  String get omJaiShivOmkara;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @refundPolicy.
  ///
  /// In en, this message translates to:
  /// **'Refund & Cancellation Policy'**
  String get refundPolicy;

  /// No description provided for @refunded.
  ///
  /// In en, this message translates to:
  /// **'Refunded'**
  String get refunded;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @reward.
  ///
  /// In en, this message translates to:
  /// **'Reward'**
  String get reward;

  /// No description provided for @rewards.
  ///
  /// In en, this message translates to:
  /// **'Rewards'**
  String get rewards;

  /// No description provided for @sant.
  ///
  /// In en, this message translates to:
  /// **'Sant'**
  String get sant;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @searchAnything.
  ///
  /// In en, this message translates to:
  /// **'Search Anything'**
  String get searchAnything;

  /// No description provided for @searchGod.
  ///
  /// In en, this message translates to:
  /// **'Search God'**
  String get searchGod;

  /// No description provided for @searchMantra.
  ///
  /// In en, this message translates to:
  /// **'Search Mantra'**
  String get searchMantra;

  /// No description provided for @searchSant.
  ///
  /// In en, this message translates to:
  /// **'Search Sant'**
  String get searchSant;

  /// No description provided for @searchTemple.
  ///
  /// In en, this message translates to:
  /// **'Search Temple'**
  String get searchTemple;

  /// No description provided for @seeDetail.
  ///
  /// In en, this message translates to:
  /// **'See Detail'**
  String get seeDetail;

  /// No description provided for @seva.
  ///
  /// In en, this message translates to:
  /// **'Seva'**
  String get seva;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @shivJiKiAarti.
  ///
  /// In en, this message translates to:
  /// **'Shiv Ji Ki Aarti'**
  String get shivJiKiAarti;

  /// No description provided for @startJaap.
  ///
  /// In en, this message translates to:
  /// **'Start Jaap →'**
  String get startJaap;

  /// No description provided for @stuti.
  ///
  /// In en, this message translates to:
  /// **'Stuti'**
  String get stuti;

  /// No description provided for @sunrise.
  ///
  /// In en, this message translates to:
  /// **'Sunrise'**
  String get sunrise;

  /// No description provided for @sunset.
  ///
  /// In en, this message translates to:
  /// **'Sunset'**
  String get sunset;

  /// No description provided for @temple.
  ///
  /// In en, this message translates to:
  /// **'Temple'**
  String get temple;

  /// No description provided for @templeGallery.
  ///
  /// In en, this message translates to:
  /// **'Temple Gallery'**
  String get templeGallery;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @todayAartiBhajan.
  ///
  /// In en, this message translates to:
  /// **'Today’s Aarti & Bhajan'**
  String get todayAartiBhajan;

  /// No description provided for @totalCoins.
  ///
  /// In en, this message translates to:
  /// **'Total Coins'**
  String get totalCoins;

  /// No description provided for @totalSeva.
  ///
  /// In en, this message translates to:
  /// **'Total Seva'**
  String get totalSeva;

  /// No description provided for @videoProof.
  ///
  /// In en, this message translates to:
  /// **'Video Proof'**
  String get videoProof;

  /// No description provided for @seeVideoProof.
  ///
  /// In en, this message translates to:
  /// **'See Video Proof'**
  String get seeVideoProof;

  /// No description provided for @watchVideo.
  ///
  /// In en, this message translates to:
  /// **'Watch Video'**
  String get watchVideo;

  /// No description provided for @devotionCompanion.
  ///
  /// In en, this message translates to:
  /// **'Your Daily Devotion Companion'**
  String get devotionCompanion;

  /// No description provided for @yourFavouriteItems.
  ///
  /// In en, this message translates to:
  /// **'Your Favourite Items'**
  String get yourFavouriteItems;

  /// No description provided for @yourFavoriteDivineMoments.
  ///
  /// In en, this message translates to:
  /// **'Your Favorite Divine Moments'**
  String get yourFavoriteDivineMoments;

  /// No description provided for @spiritualTempleJourney.
  ///
  /// In en, this message translates to:
  /// **'Your Spiritual Temple Journey'**
  String get spiritualTempleJourney;

  /// No description provided for @spiritualGodCollection.
  ///
  /// In en, this message translates to:
  /// **'Your Spiritual God Collection'**
  String get spiritualGodCollection;

  /// No description provided for @engageEarnRewards.
  ///
  /// In en, this message translates to:
  /// **'Engage & Earn Rewards'**
  String get engageEarnRewards;

  /// No description provided for @pleaseEnterMessageForVendor.
  ///
  /// In en, this message translates to:
  /// **'Please enter message for vendor'**
  String get pleaseEnterMessageForVendor;

  /// No description provided for @realTimeCounter.
  ///
  /// In en, this message translates to:
  /// **'Real Time Counter'**
  String get realTimeCounter;

  /// No description provided for @hindi.
  ///
  /// In en, this message translates to:
  /// **'हिन्दी'**
  String get hindi;

  /// No description provided for @pleaseEnterConfirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter your confirm password'**
  String get pleaseEnterConfirmPassword;

  /// No description provided for @pleaseEnterPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter your password'**
  String get pleaseEnterPassword;

  /// No description provided for @pleaseEnterEmailAddr.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address'**
  String get pleaseEnterEmailAddr;

  /// No description provided for @pleaseEnterYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email'**
  String get pleaseEnterYourEmail;

  /// No description provided for @searchAllHint.
  ///
  /// In en, this message translates to:
  /// **'Search god, temple, sant, aarti...'**
  String get searchAllHint;

  /// No description provided for @avatarsAndForms.
  ///
  /// In en, this message translates to:
  /// **'Avatars & Forms'**
  String get avatarsAndForms;

  /// No description provided for @familyMembers.
  ///
  /// In en, this message translates to:
  /// **'Family Members'**
  String get familyMembers;

  /// No description provided for @daanAndSeva.
  ///
  /// In en, this message translates to:
  /// **'Daan and Seva'**
  String get daanAndSeva;

  /// No description provided for @sevaAmount.
  ///
  /// In en, this message translates to:
  /// **'Seva Amount'**
  String get sevaAmount;

  /// No description provided for @platformFee.
  ///
  /// In en, this message translates to:
  /// **'Platform Fee'**
  String get platformFee;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPassword;

  /// No description provided for @searchChalisaHint.
  ///
  /// In en, this message translates to:
  /// **'Search chalisa...'**
  String get searchChalisaHint;

  /// No description provided for @changeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get changeLanguage;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// No description provided for @sevaHistory.
  ///
  /// In en, this message translates to:
  /// **'Seva History'**
  String get sevaHistory;

  /// No description provided for @jaapHistory.
  ///
  /// In en, this message translates to:
  /// **'Jaap History'**
  String get jaapHistory;

  /// No description provided for @aboutUs.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get aboutUs;

  /// No description provided for @quickSevas.
  ///
  /// In en, this message translates to:
  /// **'Quick Sevas'**
  String get quickSevas;

  /// No description provided for @aartiBhajanMantra.
  ///
  /// In en, this message translates to:
  /// **'Aarti, Bhajan\n& Mantra'**
  String get aartiBhajanMantra;

  /// No description provided for @godDevta.
  ///
  /// In en, this message translates to:
  /// **'God &\nDevta'**
  String get godDevta;

  /// No description provided for @mandirDarshan.
  ///
  /// In en, this message translates to:
  /// **'Mandir &\nDarshan'**
  String get mandirDarshan;

  /// No description provided for @pujariSantGuru.
  ///
  /// In en, this message translates to:
  /// **'Pujari, Sant\n& Guru'**
  String get pujariSantGuru;

  /// No description provided for @animalFoodSeva.
  ///
  /// In en, this message translates to:
  /// **'Animal Food\n& Seva'**
  String get animalFoodSeva;

  /// No description provided for @muhuratLagan.
  ///
  /// In en, this message translates to:
  /// **'Muhurat &\nLagan'**
  String get muhuratLagan;

  /// No description provided for @festivalEvents.
  ///
  /// In en, this message translates to:
  /// **'Festival &\nEvents'**
  String get festivalEvents;

  /// No description provided for @sharadPitarpaksh.
  ///
  /// In en, this message translates to:
  /// **'Sharad\nPitarpaksh'**
  String get sharadPitarpaksh;

  /// No description provided for @communitiesGroups.
  ///
  /// In en, this message translates to:
  /// **'Communities\n& Groups'**
  String get communitiesGroups;

  /// No description provided for @comingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming Soon'**
  String get comingSoon;

  /// No description provided for @helpUsGrow.
  ///
  /// In en, this message translates to:
  /// **'Help us grow'**
  String get helpUsGrow;

  /// No description provided for @inviteYourFriends.
  ///
  /// In en, this message translates to:
  /// **'Invite Your Friends'**
  String get inviteYourFriends;

  /// No description provided for @shareCta.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get shareCta;

  /// No description provided for @mobileMandirApp.
  ///
  /// In en, this message translates to:
  /// **'Mobile Mandir App'**
  String get mobileMandirApp;

  /// No description provided for @todayAartiBhajanMore.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Aarti, Bhajan & more'**
  String get todayAartiBhajanMore;

  /// No description provided for @youtubeShortsTitle.
  ///
  /// In en, this message translates to:
  /// **'YouTube Shorts'**
  String get youtubeShortsTitle;

  /// No description provided for @santMahapurushProfiles.
  ///
  /// In en, this message translates to:
  /// **'Sant & Mahapurush Profiles'**
  String get santMahapurushProfiles;

  /// No description provided for @seeAll.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get seeAll;

  /// No description provided for @digitalNaamJaap.
  ///
  /// In en, this message translates to:
  /// **'Digital Naam Jaap'**
  String get digitalNaamJaap;

  /// No description provided for @jaapTracking.
  ///
  /// In en, this message translates to:
  /// **'Jaap\nTracking'**
  String get jaapTracking;

  /// No description provided for @bhaktiProgress.
  ///
  /// In en, this message translates to:
  /// **'Bhakti\nProgress'**
  String get bhaktiProgress;

  /// No description provided for @digitalCounterForNaamJaap.
  ///
  /// In en, this message translates to:
  /// **'Digital Counter For Naam Jaap'**
  String get digitalCounterForNaamJaap;

  /// No description provided for @digitalCounterSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Keep track of every sacred Naam Jaap\nwith a simple digital counter.'**
  String get digitalCounterSubtitle;

  /// No description provided for @chooseMantra.
  ///
  /// In en, this message translates to:
  /// **'Choose Mantra'**
  String get chooseMantra;

  /// No description provided for @jaapCount.
  ///
  /// In en, this message translates to:
  /// **'Jaap Count'**
  String get jaapCount;

  /// No description provided for @showHistory.
  ///
  /// In en, this message translates to:
  /// **'Show History'**
  String get showHistory;

  /// No description provided for @jaapCountCompleted.
  ///
  /// In en, this message translates to:
  /// **'Jaap Count Completed'**
  String get jaapCountCompleted;

  /// No description provided for @myJaapCountShareText.
  ///
  /// In en, this message translates to:
  /// **'My Jaap count for today. Track yours with the Mobile Mandir App.'**
  String get myJaapCountShareText;

  /// No description provided for @godName.
  ///
  /// In en, this message translates to:
  /// **'God Name'**
  String get godName;

  /// No description provided for @festival.
  ///
  /// In en, this message translates to:
  /// **'Festival'**
  String get festival;

  /// No description provided for @inviteYourFriend.
  ///
  /// In en, this message translates to:
  /// **'Invite your friend'**
  String get inviteYourFriend;

  /// No description provided for @navHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// No description provided for @navAarti.
  ///
  /// In en, this message translates to:
  /// **'Aarti'**
  String get navAarti;

  /// No description provided for @navSeva.
  ///
  /// In en, this message translates to:
  /// **'Seva'**
  String get navSeva;

  /// No description provided for @navJaap.
  ///
  /// In en, this message translates to:
  /// **'Jaap'**
  String get navJaap;

  /// No description provided for @navProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get navProfile;

  /// No description provided for @namastey.
  ///
  /// In en, this message translates to:
  /// **'Namaste'**
  String get namastey;

  /// No description provided for @searchDots.
  ///
  /// In en, this message translates to:
  /// **'Search...'**
  String get searchDots;

  /// No description provided for @loginTitle.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginTitle;

  /// No description provided for @loginSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Please, Sign in to Your Account'**
  String get loginSubtitle;

  /// No description provided for @orLoginWith.
  ///
  /// In en, this message translates to:
  /// **'Or login with'**
  String get orLoginWith;

  /// No description provided for @sendOtp.
  ///
  /// In en, this message translates to:
  /// **'Send OTP'**
  String get sendOtp;

  /// No description provided for @enterYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get enterYourEmail;

  /// No description provided for @forgotPasswordDesc.
  ///
  /// In en, this message translates to:
  /// **'Enter your email below. We will send you a verification code to reset your password.'**
  String get forgotPasswordDesc;

  /// No description provided for @verification.
  ///
  /// In en, this message translates to:
  /// **'Verification'**
  String get verification;

  /// No description provided for @resendOtp.
  ///
  /// In en, this message translates to:
  /// **'Resend OTP'**
  String get resendOtp;

  /// No description provided for @enterFullName.
  ///
  /// In en, this message translates to:
  /// **'Enter full name'**
  String get enterFullName;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @selectGender.
  ///
  /// In en, this message translates to:
  /// **'Select gender'**
  String get selectGender;

  /// No description provided for @dob.
  ///
  /// In en, this message translates to:
  /// **'DOB'**
  String get dob;

  /// No description provided for @selectDob.
  ///
  /// In en, this message translates to:
  /// **'Select date of birth'**
  String get selectDob;

  /// No description provided for @birthTime.
  ///
  /// In en, this message translates to:
  /// **'Birth Time'**
  String get birthTime;

  /// No description provided for @selectTime.
  ///
  /// In en, this message translates to:
  /// **'Select time'**
  String get selectTime;

  /// No description provided for @locationLabel.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get locationLabel;

  /// No description provided for @enterLocation.
  ///
  /// In en, this message translates to:
  /// **'Enter location'**
  String get enterLocation;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get emailAddress;

  /// No description provided for @personalInformation.
  ///
  /// In en, this message translates to:
  /// **'Personal Information'**
  String get personalInformation;

  /// No description provided for @pleaseSelectGender.
  ///
  /// In en, this message translates to:
  /// **'Please select your gender'**
  String get pleaseSelectGender;

  /// No description provided for @pleaseFillAllFields.
  ///
  /// In en, this message translates to:
  /// **'Please fill all fields'**
  String get pleaseFillAllFields;

  /// No description provided for @profileUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Profile updated successfully'**
  String get profileUpdatedSuccessfully;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get saveChanges;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contactUs;

  /// No description provided for @myFavourites.
  ///
  /// In en, this message translates to:
  /// **'My Favourites'**
  String get myFavourites;

  /// No description provided for @noFavoritesYet.
  ///
  /// In en, this message translates to:
  /// **'No Favorites Yet'**
  String get noFavoritesYet;

  /// No description provided for @noFavoritesDesc.
  ///
  /// In en, this message translates to:
  /// **'You have not added any favourites yet.'**
  String get noFavoritesDesc;

  /// No description provided for @favoriteItems.
  ///
  /// In en, this message translates to:
  /// **'Favorite Items'**
  String get favoriteItems;

  /// No description provided for @favoriteItemsDesc.
  ///
  /// In en, this message translates to:
  /// **'Your collection of devotional content'**
  String get favoriteItemsDesc;

  /// No description provided for @singerMmaTeam.
  ///
  /// In en, this message translates to:
  /// **'Singer: MMA Team'**
  String get singerMmaTeam;

  /// No description provided for @filterAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get filterAll;

  /// No description provided for @noInternet.
  ///
  /// In en, this message translates to:
  /// **'No Internet'**
  String get noInternet;

  /// No description provided for @checkInternet.
  ///
  /// In en, this message translates to:
  /// **'Please check your internet connection.'**
  String get checkInternet;

  /// No description provided for @basicInformation.
  ///
  /// In en, this message translates to:
  /// **'Basic Information'**
  String get basicInformation;

  /// No description provided for @templeName.
  ///
  /// In en, this message translates to:
  /// **'TEMPLE NAME'**
  String get templeName;

  /// No description provided for @locationLabel2.
  ///
  /// In en, this message translates to:
  /// **'LOCATION'**
  String get locationLabel2;

  /// No description provided for @district.
  ///
  /// In en, this message translates to:
  /// **'DISTRICT'**
  String get district;

  /// No description provided for @state.
  ///
  /// In en, this message translates to:
  /// **'STATE'**
  String get state;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'COUNTRY'**
  String get country;

  /// No description provided for @architecture.
  ///
  /// In en, this message translates to:
  /// **'ARCHITECTURE'**
  String get architecture;

  /// No description provided for @servicesFacilities.
  ///
  /// In en, this message translates to:
  /// **'Services & Facilities'**
  String get servicesFacilities;

  /// No description provided for @aartiTempleTiming.
  ///
  /// In en, this message translates to:
  /// **'Aarti & Temple Timing'**
  String get aartiTempleTiming;

  /// No description provided for @planYourRoute.
  ///
  /// In en, this message translates to:
  /// **'Plan Your Route'**
  String get planYourRoute;

  /// No description provided for @fullAddress.
  ///
  /// In en, this message translates to:
  /// **'Full Address'**
  String get fullAddress;

  /// No description provided for @getDirections.
  ///
  /// In en, this message translates to:
  /// **'Get Directions'**
  String get getDirections;

  /// No description provided for @relatedTemple.
  ///
  /// In en, this message translates to:
  /// **'Related Temple'**
  String get relatedTemple;

  /// No description provided for @hotelNearby.
  ///
  /// In en, this message translates to:
  /// **'Hotel Nearby'**
  String get hotelNearby;

  /// No description provided for @noTemplesFound.
  ///
  /// In en, this message translates to:
  /// **'No Temples Found'**
  String get noTemplesFound;

  /// No description provided for @mandirDarshanKre.
  ///
  /// In en, this message translates to:
  /// **'Visit Mandir for Darshan'**
  String get mandirDarshanKre;

  /// No description provided for @allAvailableSevas2.
  ///
  /// In en, this message translates to:
  /// **'All Available Sevas'**
  String get allAvailableSevas2;

  /// No description provided for @myJaapText.
  ///
  /// In en, this message translates to:
  /// **'My Jaap count for today. Track yours with the Mobile Mandir App.'**
  String get myJaapText;

  /// No description provided for @showLyrics.
  ///
  /// In en, this message translates to:
  /// **'Show Lyrics'**
  String get showLyrics;

  /// No description provided for @relatedAarties.
  ///
  /// In en, this message translates to:
  /// **'Related Aarties'**
  String get relatedAarties;

  /// No description provided for @mmaTeam.
  ///
  /// In en, this message translates to:
  /// **'MMA Team'**
  String get mmaTeam;

  /// No description provided for @mobileMandirAppMsg.
  ///
  /// In en, this message translates to:
  /// **'Mobile Mandir app'**
  String get mobileMandirAppMsg;

  /// No description provided for @godDetailBasicInfo.
  ///
  /// In en, this message translates to:
  /// **'Basic Information'**
  String get godDetailBasicInfo;

  /// No description provided for @godNameLabel.
  ///
  /// In en, this message translates to:
  /// **'GOD NAME'**
  String get godNameLabel;

  /// No description provided for @avatarOf.
  ///
  /// In en, this message translates to:
  /// **'AVATAR OF'**
  String get avatarOf;

  /// No description provided for @genderLabel.
  ///
  /// In en, this message translates to:
  /// **'GENDER'**
  String get genderLabel;

  /// No description provided for @categoryLabel.
  ///
  /// In en, this message translates to:
  /// **'CATEGORY'**
  String get categoryLabel;

  /// No description provided for @weaponLabel.
  ///
  /// In en, this message translates to:
  /// **'WEAPON'**
  String get weaponLabel;

  /// No description provided for @vahanLabel.
  ///
  /// In en, this message translates to:
  /// **'VAHAN'**
  String get vahanLabel;

  /// No description provided for @favoriteColor.
  ///
  /// In en, this message translates to:
  /// **'FAVORITE COLOR'**
  String get favoriteColor;

  /// No description provided for @favoriteFood.
  ///
  /// In en, this message translates to:
  /// **'FAVORITE FOOD'**
  String get favoriteFood;

  /// No description provided for @dayLabel.
  ///
  /// In en, this message translates to:
  /// **'DAY'**
  String get dayLabel;

  /// No description provided for @alternateNames.
  ///
  /// In en, this message translates to:
  /// **'ALTERNATE NAMES'**
  String get alternateNames;

  /// No description provided for @aboutSection.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutSection;

  /// No description provided for @relatedGod.
  ///
  /// In en, this message translates to:
  /// **'Related God'**
  String get relatedGod;

  /// No description provided for @godAndAvatar.
  ///
  /// In en, this message translates to:
  /// **'God & Avatar'**
  String get godAndAvatar;

  /// No description provided for @proceed.
  ///
  /// In en, this message translates to:
  /// **'Proceed'**
  String get proceed;

  /// No description provided for @aajKaPanchang.
  ///
  /// In en, this message translates to:
  /// **'🪔 Aaj Ka Panchang'**
  String get aajKaPanchang;

  /// No description provided for @auspiciousTime.
  ///
  /// In en, this message translates to:
  /// **'🕉 Auspicious Time'**
  String get auspiciousTime;

  /// No description provided for @aartiBhajanKatha.
  ///
  /// In en, this message translates to:
  /// **'Aarti, Bhajan & Katha'**
  String get aartiBhajanKatha;

  /// No description provided for @typeAboveToSearch.
  ///
  /// In en, this message translates to:
  /// **'Type above to search'**
  String get typeAboveToSearch;

  /// No description provided for @santDetail.
  ///
  /// In en, this message translates to:
  /// **'Sant Detail'**
  String get santDetail;

  /// No description provided for @keyInformation.
  ///
  /// In en, this message translates to:
  /// **'Key information'**
  String get keyInformation;

  /// No description provided for @keyInformationCap.
  ///
  /// In en, this message translates to:
  /// **'Key Information'**
  String get keyInformationCap;

  /// No description provided for @guru.
  ///
  /// In en, this message translates to:
  /// **'Guru'**
  String get guru;

  /// No description provided for @specialist.
  ///
  /// In en, this message translates to:
  /// **'Specialist'**
  String get specialist;

  /// No description provided for @educationLabel.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get educationLabel;

  /// No description provided for @designation.
  ///
  /// In en, this message translates to:
  /// **'Designation'**
  String get designation;

  /// No description provided for @experience.
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get experience;

  /// No description provided for @relatedSant.
  ///
  /// In en, this message translates to:
  /// **'Related Sant'**
  String get relatedSant;

  /// No description provided for @nameDirectory.
  ///
  /// In en, this message translates to:
  /// **'Name Directory'**
  String get nameDirectory;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @yourSevaHistory.
  ///
  /// In en, this message translates to:
  /// **'Your Seva History'**
  String get yourSevaHistory;

  /// No description provided for @noHistoryFound.
  ///
  /// In en, this message translates to:
  /// **'No history found.'**
  String get noHistoryFound;

  /// No description provided for @selectSeva.
  ///
  /// In en, this message translates to:
  /// **'Select Seva'**
  String get selectSeva;

  /// No description provided for @gst.
  ///
  /// In en, this message translates to:
  /// **'GST'**
  String get gst;

  /// No description provided for @multiSevaHint.
  ///
  /// In en, this message translates to:
  /// **'You can add multiple seva types after registration is complete'**
  String get multiSevaHint;

  /// No description provided for @sevaName.
  ///
  /// In en, this message translates to:
  /// **'Seva Name'**
  String get sevaName;

  /// No description provided for @donorName.
  ///
  /// In en, this message translates to:
  /// **'Donor Name'**
  String get donorName;

  /// No description provided for @videoProofExpected.
  ///
  /// In en, this message translates to:
  /// **'Video proof expected by'**
  String get videoProofExpected;

  /// No description provided for @liveStatus.
  ///
  /// In en, this message translates to:
  /// **'Live Status'**
  String get liveStatus;

  /// No description provided for @shriGauShala.
  ///
  /// In en, this message translates to:
  /// **'Shri Gau Shala'**
  String get shriGauShala;

  /// No description provided for @transparent100.
  ///
  /// In en, this message translates to:
  /// **'100% Transparent Seva'**
  String get transparent100;

  /// No description provided for @selectAmount.
  ///
  /// In en, this message translates to:
  /// **'Select Amount'**
  String get selectAmount;

  /// No description provided for @raiseConcern.
  ///
  /// In en, this message translates to:
  /// **'Raise Concern'**
  String get raiseConcern;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @messageForVendor.
  ///
  /// In en, this message translates to:
  /// **'Message For Vendor'**
  String get messageForVendor;

  /// No description provided for @enterMessage.
  ///
  /// In en, this message translates to:
  /// **'Enter message...'**
  String get enterMessage;

  /// No description provided for @addMember.
  ///
  /// In en, this message translates to:
  /// **'Add Member'**
  String get addMember;

  /// No description provided for @sevaProofReady.
  ///
  /// In en, this message translates to:
  /// **'Your Seva proof is ready!'**
  String get sevaProofReady;

  /// No description provided for @gauSevaProofReady.
  ///
  /// In en, this message translates to:
  /// **'Your Gau Seva proof is ready!'**
  String get gauSevaProofReady;

  /// No description provided for @raiseConcernWithin.
  ///
  /// In en, this message translates to:
  /// **'Something wrong? Raise a concern within 48 hours'**
  String get raiseConcernWithin;

  /// No description provided for @yourOriginalMessage.
  ///
  /// In en, this message translates to:
  /// **'Your Original Message'**
  String get yourOriginalMessage;

  /// No description provided for @approve.
  ///
  /// In en, this message translates to:
  /// **'Approve'**
  String get approve;

  /// No description provided for @goToHome.
  ///
  /// In en, this message translates to:
  /// **'Go To Home'**
  String get goToHome;

  /// No description provided for @personalMessage.
  ///
  /// In en, this message translates to:
  /// **'Personal Message'**
  String get personalMessage;

  /// No description provided for @yourNameInVideo.
  ///
  /// In en, this message translates to:
  /// **'Your name in the video (editable)'**
  String get yourNameInVideo;

  /// No description provided for @donatingOnBehalf.
  ///
  /// In en, this message translates to:
  /// **'Donating on behalf of optional'**
  String get donatingOnBehalf;

  /// No description provided for @egMotherName.
  ///
  /// In en, this message translates to:
  /// **'e.g. my mother Savitri Devi....'**
  String get egMotherName;

  /// No description provided for @personalMsgOptional.
  ///
  /// In en, this message translates to:
  /// **'Personal message for the video optional'**
  String get personalMsgOptional;

  /// No description provided for @egYehSeva.
  ///
  /// In en, this message translates to:
  /// **'e.g. yeh seva mere ghar me sukh shanti ke liye hai'**
  String get egYehSeva;

  /// No description provided for @howSoundPreview.
  ///
  /// In en, this message translates to:
  /// **'How your video will sound'**
  String get howSoundPreview;

  /// No description provided for @namaskaar.
  ///
  /// In en, this message translates to:
  /// **'Namaskaar'**
  String get namaskaar;

  /// No description provided for @sevaBookingSuccess.
  ///
  /// In en, this message translates to:
  /// **'Go To Home'**
  String get sevaBookingSuccess;

  /// No description provided for @languageChange.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languageChange;

  /// No description provided for @shareApp.
  ///
  /// In en, this message translates to:
  /// **'Share App'**
  String get shareApp;

  /// No description provided for @rateUs.
  ///
  /// In en, this message translates to:
  /// **'Rate Us'**
  String get rateUs;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @noNotifications.
  ///
  /// In en, this message translates to:
  /// **'No Notifications'**
  String get noNotifications;

  /// No description provided for @notifications2.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications2;

  /// No description provided for @markAllRead.
  ///
  /// In en, this message translates to:
  /// **'Mark all as read'**
  String get markAllRead;

  /// No description provided for @earnPoints.
  ///
  /// In en, this message translates to:
  /// **'Earn Points'**
  String get earnPoints;

  /// No description provided for @freeTirthYatra.
  ///
  /// In en, this message translates to:
  /// **'Free Tirth Yatra'**
  String get freeTirthYatra;

  /// No description provided for @howItWorks.
  ///
  /// In en, this message translates to:
  /// **'How it works'**
  String get howItWorks;

  /// No description provided for @weeklyStreak.
  ///
  /// In en, this message translates to:
  /// **'Weekly Streak'**
  String get weeklyStreak;

  /// No description provided for @rewardPoints.
  ///
  /// In en, this message translates to:
  /// **'Reward Points'**
  String get rewardPoints;

  /// No description provided for @quickGuide.
  ///
  /// In en, this message translates to:
  /// **'Quick Guide'**
  String get quickGuide;

  /// No description provided for @popularTemples.
  ///
  /// In en, this message translates to:
  /// **'Popular Temples'**
  String get popularTemples;

  /// No description provided for @nearbyTemples.
  ///
  /// In en, this message translates to:
  /// **'Nearby Temples'**
  String get nearbyTemples;

  /// No description provided for @exploreTemples.
  ///
  /// In en, this message translates to:
  /// **'Explore Temples'**
  String get exploreTemples;

  /// No description provided for @bookSewa.
  ///
  /// In en, this message translates to:
  /// **'Book Sewa'**
  String get bookSewa;

  /// No description provided for @sewaDetails.
  ///
  /// In en, this message translates to:
  /// **'Sewa Details'**
  String get sewaDetails;

  /// No description provided for @festivalSection.
  ///
  /// In en, this message translates to:
  /// **'Festivals'**
  String get festivalSection;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll;

  /// No description provided for @iAcceptTerms.
  ///
  /// In en, this message translates to:
  /// **'I accept the Terms & Conditions and would like to receive communication related to services, offers & updates from Mobile Mandir via SMS, E-mail, Google RCS and WhatsApp.'**
  String get iAcceptTerms;

  /// No description provided for @searchBarHint.
  ///
  /// In en, this message translates to:
  /// **'Search...'**
  String get searchBarHint;

  /// No description provided for @nameOnlyAlphabets.
  ///
  /// In en, this message translates to:
  /// **'Name should contain only alphabets.'**
  String get nameOnlyAlphabets;

  /// No description provided for @favouriteMantra.
  ///
  /// In en, this message translates to:
  /// **'Favourite Mantra'**
  String get favouriteMantra;

  /// No description provided for @godHorizontal.
  ///
  /// In en, this message translates to:
  /// **'God'**
  String get godHorizontal;

  /// No description provided for @tapOnScreen.
  ///
  /// In en, this message translates to:
  /// **'Tap on Screen'**
  String get tapOnScreen;

  /// No description provided for @durationLabel.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get durationLabel;

  /// No description provided for @congratulations.
  ///
  /// In en, this message translates to:
  /// **'Congratulations'**
  String get congratulations;

  /// No description provided for @mins.
  ///
  /// In en, this message translates to:
  /// **'mins'**
  String get mins;

  /// No description provided for @sec.
  ///
  /// In en, this message translates to:
  /// **'sec'**
  String get sec;

  /// No description provided for @realTimeVideo.
  ///
  /// In en, this message translates to:
  /// **'Real-Time Video'**
  String get realTimeVideo;

  /// No description provided for @easyRefundAssistance.
  ///
  /// In en, this message translates to:
  /// **'Easy Refund Assistance'**
  String get easyRefundAssistance;

  /// No description provided for @liveGpsTracking.
  ///
  /// In en, this message translates to:
  /// **'Live GPS Tracking'**
  String get liveGpsTracking;

  /// No description provided for @templeNearYou.
  ///
  /// In en, this message translates to:
  /// **'Temple Near You'**
  String get templeNearYou;

  /// No description provided for @enterTempleName.
  ///
  /// In en, this message translates to:
  /// **'Enter Temple Name'**
  String get enterTempleName;

  /// No description provided for @resultsFound.
  ///
  /// In en, this message translates to:
  /// **'Results Found'**
  String get resultsFound;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @google.
  ///
  /// In en, this message translates to:
  /// **'Google'**
  String get google;

  /// No description provided for @apple.
  ///
  /// In en, this message translates to:
  /// **'Apple'**
  String get apple;

  /// No description provided for @voice.
  ///
  /// In en, this message translates to:
  /// **'Voice'**
  String get voice;

  /// No description provided for @reel.
  ///
  /// In en, this message translates to:
  /// **'Reel'**
  String get reel;

  /// No description provided for @pressBackAgainToExit.
  ///
  /// In en, this message translates to:
  /// **'Press back again to exit'**
  String get pressBackAgainToExit;

  /// No description provided for @updateRequired.
  ///
  /// In en, this message translates to:
  /// **'Update Required'**
  String get updateRequired;

  /// No description provided for @updateRequiredDesc.
  ///
  /// In en, this message translates to:
  /// **'A new version with important improvements is available. Update now to continue using the app.'**
  String get updateRequiredDesc;

  /// No description provided for @updateNow.
  ///
  /// In en, this message translates to:
  /// **'Update Now'**
  String get updateNow;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @searchHere.
  ///
  /// In en, this message translates to:
  /// **'Search here'**
  String get searchHere;

  /// No description provided for @selectCategory.
  ///
  /// In en, this message translates to:
  /// **'Select Category'**
  String get selectCategory;

  /// No description provided for @mobileMandir.
  ///
  /// In en, this message translates to:
  /// **'Mobile Mandir'**
  String get mobileMandir;

  /// No description provided for @productsSeva.
  ///
  /// In en, this message translates to:
  /// **'Products & Seva'**
  String get productsSeva;

  /// No description provided for @revisitSavedItems.
  ///
  /// In en, this message translates to:
  /// **'Revisit your saved items.'**
  String get revisitSavedItems;

  /// No description provided for @findFamousTemples.
  ///
  /// In en, this message translates to:
  /// **'Find Famous temples.'**
  String get findFamousTemples;

  /// No description provided for @godsDevtaAndMore.
  ///
  /// In en, this message translates to:
  /// **'Gods, Devta & More.'**
  String get godsDevtaAndMore;

  /// No description provided for @getBlessingBySevas.
  ///
  /// In en, this message translates to:
  /// **'Get Blessing By Sevas.'**
  String get getBlessingBySevas;

  /// No description provided for @discoverSpiritualPersonalities.
  ///
  /// In en, this message translates to:
  /// **'Discover spiritual personalities.'**
  String get discoverSpiritualPersonalities;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @moreToNextReward.
  ///
  /// In en, this message translates to:
  /// **'more to next reward'**
  String get moreToNextReward;

  /// No description provided for @dayStreak.
  ///
  /// In en, this message translates to:
  /// **'Day Streak'**
  String get dayStreak;

  /// No description provided for @moreForBonusCoins.
  ///
  /// In en, this message translates to:
  /// **'more for bonus coins'**
  String get moreForBonusCoins;

  /// No description provided for @dailySevaAarti.
  ///
  /// In en, this message translates to:
  /// **'Daily Seva\n& Aarti'**
  String get dailySevaAarti;

  /// No description provided for @earnCoins.
  ///
  /// In en, this message translates to:
  /// **'Earn\nCoins'**
  String get earnCoins;

  /// No description provided for @claimRewards.
  ///
  /// In en, this message translates to:
  /// **'Claim\nRewards'**
  String get claimRewards;

  /// No description provided for @enjoyBenefits.
  ///
  /// In en, this message translates to:
  /// **'Enjoy\nBenefits'**
  String get enjoyBenefits;

  /// No description provided for @allCoupons.
  ///
  /// In en, this message translates to:
  /// **'All Coupons'**
  String get allCoupons;

  /// No description provided for @tasks.
  ///
  /// In en, this message translates to:
  /// **'Tasks'**
  String get tasks;

  /// No description provided for @weeklyStreakTracker.
  ///
  /// In en, this message translates to:
  /// **'Weekly Streak Tracker'**
  String get weeklyStreakTracker;

  /// No description provided for @coinsNeeded.
  ///
  /// In en, this message translates to:
  /// **'Coins Needed'**
  String get coinsNeeded;

  /// No description provided for @coins.
  ///
  /// In en, this message translates to:
  /// **'Coins'**
  String get coins;

  /// No description provided for @available.
  ///
  /// In en, this message translates to:
  /// **'Available'**
  String get available;

  /// No description provided for @popular.
  ///
  /// In en, this message translates to:
  /// **'Popular'**
  String get popular;

  /// No description provided for @inclusion.
  ///
  /// In en, this message translates to:
  /// **'Inclusion:-'**
  String get inclusion;

  /// No description provided for @exclusion.
  ///
  /// In en, this message translates to:
  /// **'Exclusion:-'**
  String get exclusion;

  /// No description provided for @claimNow.
  ///
  /// In en, this message translates to:
  /// **'Claim Now'**
  String get claimNow;

  /// No description provided for @locked.
  ///
  /// In en, this message translates to:
  /// **'Locked'**
  String get locked;

  /// No description provided for @redeemCoinsGetBenefits.
  ///
  /// In en, this message translates to:
  /// **'Redeem Coins & Get Benefits.'**
  String get redeemCoinsGetBenefits;

  /// No description provided for @resendOtpIn.
  ///
  /// In en, this message translates to:
  /// **'Resend OTP in'**
  String get resendOtpIn;

  /// No description provided for @otp.
  ///
  /// In en, this message translates to:
  /// **'OTP'**
  String get otp;

  /// No description provided for @searchRadhaAarti.
  ///
  /// In en, this message translates to:
  /// **'Search \"Radha Aarti\"'**
  String get searchRadhaAarti;

  /// No description provided for @viewFullCalendar.
  ///
  /// In en, this message translates to:
  /// **'View Full Calendar'**
  String get viewFullCalendar;

  /// No description provided for @bhajan.
  ///
  /// In en, this message translates to:
  /// **'Bhajan'**
  String get bhajan;

  /// No description provided for @aboutGod.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutGod;

  /// No description provided for @father.
  ///
  /// In en, this message translates to:
  /// **'Father:'**
  String get father;

  /// No description provided for @mother.
  ///
  /// In en, this message translates to:
  /// **'Mother:'**
  String get mother;

  /// No description provided for @spouse.
  ///
  /// In en, this message translates to:
  /// **'Wife/Husband:'**
  String get spouse;

  /// No description provided for @wife.
  ///
  /// In en, this message translates to:
  /// **'Wife:'**
  String get wife;

  /// No description provided for @husband.
  ///
  /// In en, this message translates to:
  /// **'Husband:'**
  String get husband;

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'Day:'**
  String get day;

  /// No description provided for @tithi.
  ///
  /// In en, this message translates to:
  /// **'Tithi'**
  String get tithi;

  /// No description provided for @related.
  ///
  /// In en, this message translates to:
  /// **'Related'**
  String get related;

  /// No description provided for @donatingOnBehalfOf.
  ///
  /// In en, this message translates to:
  /// **'Donating on behalf of (optional)'**
  String get donatingOnBehalfOf;

  /// No description provided for @loadMore.
  ///
  /// In en, this message translates to:
  /// **'Load More'**
  String get loadMore;

  /// No description provided for @top.
  ///
  /// In en, this message translates to:
  /// **'Top'**
  String get top;

  /// No description provided for @km.
  ///
  /// In en, this message translates to:
  /// **'km'**
  String get km;

  /// No description provided for @godListing.
  ///
  /// In en, this message translates to:
  /// **'God Listing'**
  String get godListing;

  /// No description provided for @devta.
  ///
  /// In en, this message translates to:
  /// **'Devta'**
  String get devta;

  /// No description provided for @devi.
  ///
  /// In en, this message translates to:
  /// **'Devi'**
  String get devi;

  /// No description provided for @epicCharacters.
  ///
  /// In en, this message translates to:
  /// **'Epic Characters'**
  String get epicCharacters;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @older.
  ///
  /// In en, this message translates to:
  /// **'Older'**
  String get older;

  /// No description provided for @enterYourPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Phone Number'**
  String get enterYourPhoneNumber;

  /// No description provided for @enterOtp.
  ///
  /// In en, this message translates to:
  /// **'Enter OTP'**
  String get enterOtp;

  /// No description provided for @popularGods.
  ///
  /// In en, this message translates to:
  /// **'Popular God'**
  String get popularGods;

  /// No description provided for @selectATrack.
  ///
  /// In en, this message translates to:
  /// **'Select a Track'**
  String get selectATrack;

  /// No description provided for @startDate.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get startDate;

  /// No description provided for @endDate.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get endDate;

  /// No description provided for @iWillDo.
  ///
  /// In en, this message translates to:
  /// **'I will do'**
  String get iWillDo;

  /// No description provided for @noMantraAvailableForThisGod.
  ///
  /// In en, this message translates to:
  /// **'No Mantra Available For This God'**
  String get noMantraAvailableForThisGod;

  /// No description provided for @favouritesMantra.
  ///
  /// In en, this message translates to:
  /// **'Favourites Mantra'**
  String get favouritesMantra;

  /// No description provided for @noDataAvailable.
  ///
  /// In en, this message translates to:
  /// **'No Data Available'**
  String get noDataAvailable;

  /// No description provided for @videoRecordedAtVerifiedGpsLocation.
  ///
  /// In en, this message translates to:
  /// **'Video Recorded At Verified GPS Location'**
  String get videoRecordedAtVerifiedGpsLocation;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @onboardingSub1.
  ///
  /// In en, this message translates to:
  /// **'Begin every day with Aartis, Bhajans, Kathas, Chalisas, Mantras and Stutis.'**
  String get onboardingSub1;

  /// No description provided for @serveWithCompassion.
  ///
  /// In en, this message translates to:
  /// **'Serve with Compassion'**
  String get serveWithCompassion;

  /// No description provided for @onboardingSub2.
  ///
  /// In en, this message translates to:
  /// **'Support Gau, Dog, Bird, Fish, Monkey and Ant Sevas and make a difference!'**
  String get onboardingSub2;

  /// No description provided for @continueWithAmount.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueWithAmount;

  /// No description provided for @pleaseEnterYourName.
  ///
  /// In en, this message translates to:
  /// **'Please enter your name'**
  String get pleaseEnterYourName;

  /// No description provided for @nameNotContainNumbers.
  ///
  /// In en, this message translates to:
  /// **'Name should not contain numbers'**
  String get nameNotContainNumbers;

  /// No description provided for @donatingOnBehalfNotContainNumbers.
  ///
  /// In en, this message translates to:
  /// **'Donating on behalf of should not contain numbers'**
  String get donatingOnBehalfNotContainNumbers;

  /// No description provided for @howYourVideoWillSound.
  ///
  /// In en, this message translates to:
  /// **'How your video will sound'**
  String get howYourVideoWillSound;

  /// No description provided for @donatingOnBehalfHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. my mother Savitri Devi....'**
  String get donatingOnBehalfHint;

  /// No description provided for @personalMessageHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. yeh seva mere ghar me sukh shanti ke liye hai'**
  String get personalMessageHint;

  /// No description provided for @namaskarVideoScript.
  ///
  /// In en, this message translates to:
  /// **'Namaskaar'**
  String get namaskarVideoScript;

  /// No description provided for @aajHum.
  ///
  /// In en, this message translates to:
  /// **'aaj hum aapki taraf se'**
  String get aajHum;

  /// No description provided for @kaDaan.
  ///
  /// In en, this message translates to:
  /// **'de rahe hain. Is daan ke liye aapka dhanyavaad. Bhagwan aapki sabhi manokamnaayein poori kare.'**
  String get kaDaan;

  /// No description provided for @currentMonthFestivals.
  ///
  /// In en, this message translates to:
  /// **'Current Month Festivals'**
  String get currentMonthFestivals;

  /// No description provided for @noFestivalsFound.
  ///
  /// In en, this message translates to:
  /// **'No Festivals Found'**
  String get noFestivalsFound;

  /// No description provided for @tomorrow.
  ///
  /// In en, this message translates to:
  /// **'Tomorrow'**
  String get tomorrow;

  /// No description provided for @daysLater.
  ///
  /// In en, this message translates to:
  /// **'days later'**
  String get daysLater;

  /// No description provided for @daysAgo.
  ///
  /// In en, this message translates to:
  /// **'days ago'**
  String get daysAgo;

  /// No description provided for @panchangCalendar.
  ///
  /// In en, this message translates to:
  /// **'Panchang Calendar'**
  String get panchangCalendar;

  /// No description provided for @yoga.
  ///
  /// In en, this message translates to:
  /// **'Yoga'**
  String get yoga;

  /// No description provided for @karan.
  ///
  /// In en, this message translates to:
  /// **'Karan'**
  String get karan;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @addPicture.
  ///
  /// In en, this message translates to:
  /// **'Add Picture'**
  String get addPicture;

  /// No description provided for @areYouSureDeleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account?'**
  String get areYouSureDeleteAccount;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @totalCount.
  ///
  /// In en, this message translates to:
  /// **'Total Count -'**
  String get totalCount;

  /// No description provided for @inProgress.
  ///
  /// In en, this message translates to:
  /// **'In Progress'**
  String get inProgress;

  /// No description provided for @refundProcessed.
  ///
  /// In en, this message translates to:
  /// **'Refund Processed'**
  String get refundProcessed;

  /// No description provided for @paymentSuccessful.
  ///
  /// In en, this message translates to:
  /// **'Payment Successful'**
  String get paymentSuccessful;

  /// No description provided for @refundSubtitle.
  ///
  /// In en, this message translates to:
  /// **'This seva could not be completed. Your amount has been refunded to your original payment method.'**
  String get refundSubtitle;

  /// No description provided for @releasesOnlyVideoProof.
  ///
  /// In en, this message translates to:
  /// **'Releases only after you receive your video proof'**
  String get releasesOnlyVideoProof;

  /// No description provided for @sevaConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Seva Confirmed'**
  String get sevaConfirmed;

  /// No description provided for @yourSevaUnderway.
  ///
  /// In en, this message translates to:
  /// **'Your {sevaName} Seva is Underway'**
  String yourSevaUnderway(Object sevaName);

  /// No description provided for @sevaCompleted.
  ///
  /// In en, this message translates to:
  /// **'Seva Completed'**
  String get sevaCompleted;

  /// No description provided for @yourSevaCompleted.
  ///
  /// In en, this message translates to:
  /// **'Your {sevaName} Seva is Completed'**
  String yourSevaCompleted(Object sevaName);

  /// No description provided for @sevaReturned.
  ///
  /// In en, this message translates to:
  /// **'Seva Returned'**
  String get sevaReturned;

  /// No description provided for @thisSevaCouldNotBeCompleted.
  ///
  /// In en, this message translates to:
  /// **'This Seva could not be completed'**
  String get thisSevaCouldNotBeCompleted;

  /// No description provided for @waiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting'**
  String get waiting;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get review;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name:'**
  String get name;

  /// No description provided for @majorFestival.
  ///
  /// In en, this message translates to:
  /// **'Major Festival'**
  String get majorFestival;

  /// No description provided for @minorFestival.
  ///
  /// In en, this message translates to:
  /// **'Minor Festival'**
  String get minorFestival;

  /// No description provided for @ekadashiVrat.
  ///
  /// In en, this message translates to:
  /// **'Ekadashi / Vrat'**
  String get ekadashiVrat;

  /// No description provided for @selected.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get selected;

  /// No description provided for @micPreparing.
  ///
  /// In en, this message translates to:
  /// **'Preparing microphone...'**
  String get micPreparing;

  /// No description provided for @checkMicPermission.
  ///
  /// In en, this message translates to:
  /// **'Please check microphone permission'**
  String get checkMicPermission;

  /// No description provided for @micStartFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not start microphone, try again'**
  String get micStartFailed;

  /// No description provided for @listeningSpeakNow.
  ///
  /// In en, this message translates to:
  /// **'Listening... Please speak'**
  String get listeningSpeakNow;

  /// No description provided for @listeningStartFailed.
  ///
  /// In en, this message translates to:
  /// **'Listening could not start'**
  String get listeningStartFailed;

  /// No description provided for @checkMicAccess.
  ///
  /// In en, this message translates to:
  /// **'Check microphone access'**
  String get checkMicAccess;

  /// No description provided for @listening.
  ///
  /// In en, this message translates to:
  /// **'Listening...'**
  String get listening;

  /// No description provided for @speakIAmListening.
  ///
  /// In en, this message translates to:
  /// **'Speak, I am listening'**
  String get speakIAmListening;

  /// No description provided for @justNow.
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get justNow;

  /// No description provided for @minAgo.
  ///
  /// In en, this message translates to:
  /// **'min ago'**
  String get minAgo;

  /// No description provided for @hoursAgo.
  ///
  /// In en, this message translates to:
  /// **'hours ago'**
  String get hoursAgo;

  /// No description provided for @noResultsFound.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get noResultsFound;

  /// No description provided for @noResultsFoundFor.
  ///
  /// In en, this message translates to:
  /// **'No results found for'**
  String get noResultsFoundFor;

  /// No description provided for @pleaseFillAllMandatoryFields.
  ///
  /// In en, this message translates to:
  /// **'Please fill all mandatory fields.'**
  String get pleaseFillAllMandatoryFields;

  /// No description provided for @pleaseSelectLocationFromSuggestionList.
  ///
  /// In en, this message translates to:
  /// **'Please select a location from the suggestion list.'**
  String get pleaseSelectLocationFromSuggestionList;

  /// No description provided for @pleaseSelectMantraFirst.
  ///
  /// In en, this message translates to:
  /// **'Please select a mantra first.'**
  String get pleaseSelectMantraFirst;

  /// No description provided for @loginRequired.
  ///
  /// In en, this message translates to:
  /// **'Login Required'**
  String get loginRequired;

  /// No description provided for @pleaseLoginToAccessFeature.
  ///
  /// In en, this message translates to:
  /// **'Please login to access this feature. Create an account to continue.'**
  String get pleaseLoginToAccessFeature;

  /// No description provided for @imageSavedToGallery.
  ///
  /// In en, this message translates to:
  /// **'Image saved to gallery'**
  String get imageSavedToGallery;

  /// No description provided for @otpResentSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'OTP resent successfully'**
  String get otpResentSuccessfully;

  /// No description provided for @invalidOrExpiredOtp.
  ///
  /// In en, this message translates to:
  /// **'Invalid or expired OTP'**
  String get invalidOrExpiredOtp;

  /// No description provided for @searchPrefix.
  ///
  /// In en, this message translates to:
  /// **'Search '**
  String get searchPrefix;

  /// No description provided for @oneTimePayment.
  ///
  /// In en, this message translates to:
  /// **'One Time Payment'**
  String get oneTimePayment;

  /// No description provided for @makeOneTimeContribution.
  ///
  /// In en, this message translates to:
  /// **'Make a one time contribution'**
  String get makeOneTimeContribution;

  /// No description provided for @monthlyPayment.
  ///
  /// In en, this message translates to:
  /// **'Monthly Payment'**
  String get monthlyPayment;

  /// No description provided for @giveEveryMonthImpact.
  ///
  /// In en, this message translates to:
  /// **'Give every month, make a bigger impact'**
  String get giveEveryMonthImpact;

  /// No description provided for @offeringItems.
  ///
  /// In en, this message translates to:
  /// **'Offering Items'**
  String get offeringItems;

  /// No description provided for @selectFrequency.
  ///
  /// In en, this message translates to:
  /// **'Select Frequency'**
  String get selectFrequency;

  /// No description provided for @daily.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get daily;

  /// No description provided for @weekly.
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get weekly;

  /// No description provided for @escrowNoticeBanner.
  ///
  /// In en, this message translates to:
  /// **'Amount will be kept in escrow — released only after video proof'**
  String get escrowNoticeBanner;

  /// No description provided for @yourWeeklySevaSummary.
  ///
  /// In en, this message translates to:
  /// **'Your weekly seva of {amount} — {count} day(s) selected'**
  String yourWeeklySevaSummary(Object amount, Object count);

  /// No description provided for @yourTithiSevaSummary.
  ///
  /// In en, this message translates to:
  /// **'Your tithi seva of {amount} — {count} tithi selected'**
  String yourTithiSevaSummary(Object amount, Object count);

  /// No description provided for @autoPayScheduleHeader.
  ///
  /// In en, this message translates to:
  /// **'Auto-pay {grossAmount} every {days} days · {count} sevas · {perDay} each'**
  String autoPayScheduleHeader(
    Object count,
    Object days,
    Object grossAmount,
    Object perDay,
  );

  /// No description provided for @moneyUsedOnDates.
  ///
  /// In en, this message translates to:
  /// **'Your money will be used on these dates ({startDate} – {endDate})'**
  String moneyUsedOnDates(Object endDate, Object startDate);

  /// No description provided for @continueWithPrice.
  ///
  /// In en, this message translates to:
  /// **'Continue - {price}'**
  String continueWithPrice(Object price);

  /// No description provided for @selectDay.
  ///
  /// In en, this message translates to:
  /// **'Select Day'**
  String get selectDay;

  /// No description provided for @selectTithi.
  ///
  /// In en, this message translates to:
  /// **'Select Tithi'**
  String get selectTithi;

  /// No description provided for @blessingsThroughGauSeva.
  ///
  /// In en, this message translates to:
  /// **'Blessings Through Gau Seva'**
  String get blessingsThroughGauSeva;

  /// No description provided for @autopayStarted.
  ///
  /// In en, this message translates to:
  /// **'Autopay started'**
  String get autopayStarted;

  /// No description provided for @autopayStartedDesc.
  ///
  /// In en, this message translates to:
  /// **'{amount} will be auto-debited every {days} days. Vendor is assigned on each scheduled seva day.'**
  String autopayStartedDesc(Object amount, Object days);

  /// No description provided for @donor.
  ///
  /// In en, this message translates to:
  /// **'Donor'**
  String get donor;

  /// No description provided for @frequency.
  ///
  /// In en, this message translates to:
  /// **'Frequency'**
  String get frequency;

  /// No description provided for @upcomingDatesMoneyUse.
  ///
  /// In en, this message translates to:
  /// **'Upcoming dates (money use)'**
  String get upcomingDatesMoneyUse;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @doAnotherSeva.
  ///
  /// In en, this message translates to:
  /// **'Do Another Seva'**
  String get doAnotherSeva;

  /// No description provided for @activeSubscription.
  ///
  /// In en, this message translates to:
  /// **'Active Subscription'**
  String get activeSubscription;

  /// No description provided for @cancelSubscription.
  ///
  /// In en, this message translates to:
  /// **'Cancel Subscription'**
  String get cancelSubscription;

  /// No description provided for @oneTimeSevaHistory.
  ///
  /// In en, this message translates to:
  /// **'One Time Seva History'**
  String get oneTimeSevaHistory;

  /// No description provided for @subscriptionSevaHistory.
  ///
  /// In en, this message translates to:
  /// **'Subscription Seva History'**
  String get subscriptionSevaHistory;

  /// No description provided for @subscriptionsNotFound.
  ///
  /// In en, this message translates to:
  /// **'Subscriptions not found'**
  String get subscriptionsNotFound;

  /// No description provided for @byDonor.
  ///
  /// In en, this message translates to:
  /// **'By {name}'**
  String byDonor(Object name);

  /// No description provided for @track.
  ///
  /// In en, this message translates to:
  /// **'Track'**
  String get track;

  /// No description provided for @videoProofReadyTap.
  ///
  /// In en, this message translates to:
  /// **'Video proof ready - tap to view'**
  String get videoProofReadyTap;

  /// No description provided for @videoProofInProgress.
  ///
  /// In en, this message translates to:
  /// **'Video proof in progress'**
  String get videoProofInProgress;

  /// No description provided for @sevasDoneProgress.
  ///
  /// In en, this message translates to:
  /// **'{done}/{total} sevas done'**
  String sevasDoneProgress(Object done, Object total);

  /// No description provided for @endsOnDate.
  ///
  /// In en, this message translates to:
  /// **'Ends {date}'**
  String endsOnDate(Object date);

  /// No description provided for @sevaSubscription.
  ///
  /// In en, this message translates to:
  /// **'Seva Subscription'**
  String get sevaSubscription;

  /// No description provided for @subscriptionDetailsNotFound.
  ///
  /// In en, this message translates to:
  /// **'Subscription Details Not Found'**
  String get subscriptionDetailsNotFound;

  /// No description provided for @goBack.
  ///
  /// In en, this message translates to:
  /// **'Go Back'**
  String get goBack;

  /// No description provided for @allDonationsInOnePlace.
  ///
  /// In en, this message translates to:
  /// **'All your seva donations in one place'**
  String get allDonationsInOnePlace;

  /// No description provided for @sevaProgress.
  ///
  /// In en, this message translates to:
  /// **'Seva Progress'**
  String get sevaProgress;

  /// No description provided for @upcomingWithCount.
  ///
  /// In en, this message translates to:
  /// **'Upcoming ({count})'**
  String upcomingWithCount(Object count);

  /// No description provided for @missedWithCount.
  ///
  /// In en, this message translates to:
  /// **'Missed ({count})'**
  String missedWithCount(Object count);

  /// No description provided for @subscriptionDetails.
  ///
  /// In en, this message translates to:
  /// **'Subscription Details'**
  String get subscriptionDetails;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @sevaStart.
  ///
  /// In en, this message translates to:
  /// **'Seva Start'**
  String get sevaStart;

  /// No description provided for @sevaEnd.
  ///
  /// In en, this message translates to:
  /// **'Seva End'**
  String get sevaEnd;

  /// No description provided for @totalCycle.
  ///
  /// In en, this message translates to:
  /// **'Total Cycle'**
  String get totalCycle;

  /// No description provided for @nextRenewal.
  ///
  /// In en, this message translates to:
  /// **'Next Renewal'**
  String get nextRenewal;

  /// No description provided for @cancelledOn.
  ///
  /// In en, this message translates to:
  /// **'Cancelled On'**
  String get cancelledOn;

  /// No description provided for @paymentBreakdown.
  ///
  /// In en, this message translates to:
  /// **'Payment Breakdown'**
  String get paymentBreakdown;

  /// No description provided for @totalPerCycle.
  ///
  /// In en, this message translates to:
  /// **'Total Per Cycle'**
  String get totalPerCycle;

  /// No description provided for @sevaSchedule.
  ///
  /// In en, this message translates to:
  /// **'Seva Schedule'**
  String get sevaSchedule;

  /// No description provided for @noScheduleAvailable.
  ///
  /// In en, this message translates to:
  /// **'No schedule available'**
  String get noScheduleAvailable;

  /// No description provided for @viewFullSchedule.
  ///
  /// In en, this message translates to:
  /// **'View Full Schedule'**
  String get viewFullSchedule;

  /// No description provided for @viewLessSchedule.
  ///
  /// In en, this message translates to:
  /// **'View Less Schedule'**
  String get viewLessSchedule;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// No description provided for @upcoming.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get upcoming;

  /// No description provided for @missed.
  ///
  /// In en, this message translates to:
  /// **'Missed'**
  String get missed;

  /// No description provided for @noSubscriptionsFound.
  ///
  /// In en, this message translates to:
  /// **'No subscriptions found'**
  String get noSubscriptionsFound;

  /// No description provided for @proofDeliveredToYou.
  ///
  /// In en, this message translates to:
  /// **'Proof delivered to you'**
  String get proofDeliveredToYou;

  /// No description provided for @sevaRequestReceived.
  ///
  /// In en, this message translates to:
  /// **'Seva request received'**
  String get sevaRequestReceived;
}

class _L10nDelegate extends LocalizationsDelegate<L10n> {
  const _L10nDelegate();

  @override
  Future<L10n> load(Locale locale) {
    return SynchronousFuture<L10n>(lookupL10n(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'hi'].contains(locale.languageCode);

  @override
  bool shouldReload(_L10nDelegate old) => false;
}

L10n lookupL10n(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return L10nEn();
    case 'hi':
      return L10nHi();
  }

  throw FlutterError(
    'L10n.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
