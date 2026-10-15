import 'seva_subscription_response.dart';

class SevaSubscriptionDetailResponse {
  final bool success;
  final String message;
  final SevaSubscriptionDetailData data;
  final Object? errors;

  const SevaSubscriptionDetailResponse({
    this.success = false,
    this.message = '',
    this.data = const SevaSubscriptionDetailData(),
    this.errors,
  });

  factory SevaSubscriptionDetailResponse.fromJson(Map<String, dynamic> json) {
    return SevaSubscriptionDetailResponse(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: json['data'] != null && json['data'] is Map<String, dynamic>
          ? SevaSubscriptionDetailData.fromJson(
              json['data'] as Map<String, dynamic>,
            )
          : const SevaSubscriptionDetailData(),
      errors: json['errors'],
    );
  }

  Map<String, dynamic> toJson() => {
        'success': success,
        'message': message,
        'data': data.toJson(),
        'errors': errors,
      };
}

class SevaSubscriptionDetailData {
  final String id;
  final String sevaName;
  final String sevaNameHi;
  final String donorName;
  final String donorPhone;
  final String dedicationMessage;
  final String frequency;
  final List<String> weekdays;
  final int amount;
  final String formattedAmount;
  final int vendorAmount;
  final String formattedVendorAmount;
  final int platformFee;
  final String formattedPlatformFee;
  final int gstAmount;
  final String formattedGstAmount;
  final String status;
  final String statusLabel;
  final String cycleStartAt;
  final String cycleEndAt;
  final String createdAt;
  final String? cancelledAt;
  final SubscriptionService service;
  final List<SubscriptionOccurrenceItem> occurrences;
  final SubscriptionDetailSummary summary;

  const SevaSubscriptionDetailData({
    this.id = '',
    this.sevaName = '',
    this.sevaNameHi = '',
    this.donorName = '',
    this.donorPhone = '',
    this.dedicationMessage = '',
    this.frequency = '',
    this.weekdays = const [],
    this.amount = 0,
    this.formattedAmount = '',
    this.vendorAmount = 0,
    this.formattedVendorAmount = '',
    this.platformFee = 0,
    this.formattedPlatformFee = '',
    this.gstAmount = 0,
    this.formattedGstAmount = '',
    this.status = '',
    this.statusLabel = '',
    this.cycleStartAt = '',
    this.cycleEndAt = '',
    this.createdAt = '',
    this.cancelledAt,
    this.service = const SubscriptionService(),
    this.occurrences = const [],
    this.summary = const SubscriptionDetailSummary(),
  });

  factory SevaSubscriptionDetailData.fromJson(Map<String, dynamic> json) {
    return SevaSubscriptionDetailData(
      id: json['_id'] as String? ?? json['id'] as String? ?? '',
      sevaName: json['sevaName'] as String? ?? '',
      sevaNameHi: json['sevaNameHi'] as String? ?? '',
      donorName: json['donorName'] as String? ?? '',
      donorPhone: json['donorPhone'] as String? ?? '',
      dedicationMessage: json['dedicationMessage'] as String? ?? '',
      frequency: json['frequency'] as String? ?? '',
      weekdays: (json['weekdays'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          const [],
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      formattedAmount: json['formattedAmount'] as String? ?? '',
      vendorAmount: (json['vendorAmount'] as num?)?.toInt() ?? 0,
      formattedVendorAmount: json['formattedVendorAmount'] as String? ?? '',
      platformFee: (json['platformFee'] as num?)?.toInt() ?? 0,
      formattedPlatformFee: json['formattedPlatformFee'] as String? ?? '',
      gstAmount: (json['gstAmount'] as num?)?.toInt() ?? 0,
      formattedGstAmount: json['formattedGstAmount'] as String? ?? '',
      status: json['status'] as String? ?? '',
      statusLabel: json['statusLabel'] as String? ?? '',
      cycleStartAt: json['cycleStartAt'] as String? ?? '',
      cycleEndAt: json['cycleEndAt'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      cancelledAt: json['cancelledAt'] as String?,
      service: () {
        if (json['service'] != null && json['service'] is Map<String, dynamic>) {
          final s = SubscriptionService.fromJson(
            json['service'] as Map<String, dynamic>,
          );
          if (s.icon.isNotEmpty) return s;
          final rootIcon = json['icon'] ??
              json['image'] ??
              json['photo'] ??
              json['serviceIcon'] ??
              json['service_icon'] ??
              '';
          if (rootIcon.toString().isNotEmpty) {
            return SubscriptionService(
              id: s.id,
              name: s.name,
              nameHi: s.nameHi,
              nameEn: s.nameEn,
              slug: s.slug,
              icon: rootIcon.toString(),
            );
          }
          return s;
        } else if (json['icon'] != null || json['image'] != null) {
          final rootIcon = (json['icon'] ?? json['image'] ?? '').toString();
          return SubscriptionService(icon: rootIcon);
        }
        return const SubscriptionService();
      }(),
      occurrences: (json['occurrences'] as List<dynamic>?)
              ?.whereType<Map<String, dynamic>>()
              .map((e) => SubscriptionOccurrenceItem.fromJson(e))
              .toList() ??
          const [],
      summary: json['summary'] != null && json['summary'] is Map<String, dynamic>
          ? SubscriptionDetailSummary.fromJson(
              json['summary'] as Map<String, dynamic>,
            )
          : const SubscriptionDetailSummary(),
    );
  }

  Map<String, dynamic> toJson() => {
        '_id': id,
        'sevaName': sevaName,
        'sevaNameHi': sevaNameHi,
        'donorName': donorName,
        'donorPhone': donorPhone,
        'dedicationMessage': dedicationMessage,
        'frequency': frequency,
        'weekdays': weekdays,
        'amount': amount,
        'formattedAmount': formattedAmount,
        'vendorAmount': vendorAmount,
        'formattedVendorAmount': formattedVendorAmount,
        'platformFee': platformFee,
        'formattedPlatformFee': formattedPlatformFee,
        'gstAmount': gstAmount,
        'formattedGstAmount': formattedGstAmount,
        'status': status,
        'statusLabel': statusLabel,
        'cycleStartAt': cycleStartAt,
        'cycleEndAt': cycleEndAt,
        'createdAt': createdAt,
        'cancelledAt': cancelledAt,
        'service': service.toJson(),
        'occurrences': occurrences.map((e) => e.toJson()).toList(),
        'summary': summary.toJson(),
      };
}

class SubscriptionOccurrenceItem {
  final String id;
  final String date;
  final int amount;
  final String formattedAmount;
  final int vendorAmount;
  final String formattedVendorAmount;
  final String status;
  final String? sevaRequestId;

  const SubscriptionOccurrenceItem({
    this.id = '',
    this.date = '',
    this.amount = 0,
    this.formattedAmount = '',
    this.vendorAmount = 0,
    this.formattedVendorAmount = '',
    this.status = '',
    this.sevaRequestId,
  });

  factory SubscriptionOccurrenceItem.fromJson(Map<String, dynamic> json) {
    return SubscriptionOccurrenceItem(
      id: json['_id'] as String? ?? json['id'] as String? ?? '',
      date: json['date'] as String? ?? '',
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      formattedAmount: json['formattedAmount'] as String? ?? '',
      vendorAmount: (json['vendorAmount'] as num?)?.toInt() ?? 0,
      formattedVendorAmount: json['formattedVendorAmount'] as String? ?? '',
      status: json['status'] as String? ?? '',
      sevaRequestId: json['sevaRequestId'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        '_id': id,
        'date': date,
        'amount': amount,
        'formattedAmount': formattedAmount,
        'vendorAmount': vendorAmount,
        'formattedVendorAmount': formattedVendorAmount,
        'status': status,
        'sevaRequestId': sevaRequestId,
      };
}

class SubscriptionDetailSummary {
  final int total;
  final int completed;
  final int scheduled;
  final int missed;

  const SubscriptionDetailSummary({
    this.total = 0,
    this.completed = 0,
    this.scheduled = 0,
    this.missed = 0,
  });

  factory SubscriptionDetailSummary.fromJson(Map<String, dynamic> json) {
    return SubscriptionDetailSummary(
      total: (json['total'] as num?)?.toInt() ?? 0,
      completed: (json['completed'] as num?)?.toInt() ?? 0,
      scheduled: (json['scheduled'] as num?)?.toInt() ?? 0,
      missed: (json['missed'] as num?)?.toInt() ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        'total': total,
        'completed': completed,
        'scheduled': scheduled,
        'missed': missed,
      };
}
