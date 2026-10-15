import 'dart:convert';
import 'package:either_dart/either.dart';
import '../../../../common/network/api_services.dart';
import '../../../../common/network/failure.dart';
import '../../../../common/service_locator/setivelocator.dart';
import '../../domain/repo/notification_repository.dart';
import '../entity/notification_api_response.dart';
import '../entity/unread_notification/unread_notification_response.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final ApiServices _apiServices = getIt<ApiServices>();

  // -----------------------------------------------------------------------
  // GET  /api/notifications?page=&limit=
  // -----------------------------------------------------------------------
  @override
  Future<Either<Failure, NotificationApiResponse>> getNotifications({
    required int page,
    required int limit,
  }) async {
    try {
      final response = await _apiServices.getWithQuery(
        "notifications",
        queryParams: {
          "page": page,
          "limit": limit,
        },
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        if (responseData['success'] == true) {
          return Right(NotificationApiResponse.fromJson(responseData));
        } else {
          final msg =
              responseData['message'] ?? "Failed to load notifications";
          return Left(Failure(msg));
        }
      } else {
        return _handleErrorResponse(response.statusCode, response.body);
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  // -----------------------------------------------------------------------
  // POST  /api/notifications/{id}/read   (empty body)
  // -----------------------------------------------------------------------
  @override
  Future<Either<Failure, bool>> markNotificationRead({
    required String notificationId,
  }) async {
    try {
      // Endpoint pattern: notifications/{id}/read
      final endpoint = "notifications/$notificationId/read";

      final response = await _apiServices.post(
        endpoint,
        {}, // empty body — API uses -d ''
        useDefaultHeaders: true,
        isJson: true,
      );

      // Accept 200 or 201 as success
      if (response.statusCode == 200 || response.statusCode == 201) {
        return const Right(true);
      } else {
        return _handleErrorResponseBool(response.statusCode, response.body);
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  // -----------------------------------------------------------------------
  // Helpers
  // -----------------------------------------------------------------------

  Either<Failure, NotificationApiResponse> _handleErrorResponse(
      int statusCode, String body) {
    try {
      final data = jsonDecode(body);
      final msg = data['message'] ?? "Server error: $statusCode";
      return Left(Failure(msg));
    } catch (_) {
      return Left(Failure("Server error: $statusCode"));
    }
  }

  // -----------------------------------------------------------------------
// GET /api/notifications/unread-count
// -----------------------------------------------------------------------
  @override
  Future<Either<Failure, UnreadNotificationResponse>>
  unReadNotificationCount() async {
    try {
      final response = await _apiServices.get(
        "notifications/unread-count",
        useDefaultHeaders: true,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        if (responseData['success'] == true) {
          return Right(
            UnreadNotificationResponse.fromJson(responseData),
          );
        } else {
          final msg =
              responseData['message'] ?? "Failed to fetch unread count";
          return Left(Failure(msg));
        }
      } else {
        return _handleUnreadCountErrorResponse(
          response.statusCode,
          response.body,
        );
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Either<Failure, UnreadNotificationResponse>
  _handleUnreadCountErrorResponse(
      int statusCode,
      String body,
      ) {
    try {
      final data = jsonDecode(body);
      final msg = data['message'] ?? "Server error: $statusCode";
      return Left(Failure(msg));
    } catch (_) {
      return Left(Failure("Server error: $statusCode"));
    }
  }

  Either<Failure, bool> _handleErrorResponseBool(
      int statusCode, String body) {
    try {
      final data = jsonDecode(body);
      final msg = data['message'] ?? "Server error: $statusCode";
      return Left(Failure(msg));
    } catch (_) {
      return Left(Failure("Server error: $statusCode"));
    }
  }
}
