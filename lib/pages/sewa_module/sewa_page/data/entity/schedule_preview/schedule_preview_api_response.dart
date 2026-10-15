class SchedulePreviewApiResponse {
  final bool success;
  final String message;
  final SchedulePreviewData data;
  final dynamic errors;

  const SchedulePreviewApiResponse({
    this.success = false,
    this.message = '',
    this.data = const SchedulePreviewData(),
    this.errors,
  });

  factory SchedulePreviewApiResponse.fromJson(Map<String, dynamic> json) {
    return SchedulePreviewApiResponse(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: json['data'] != null
          ? SchedulePreviewData.fromJson(json['data'] as Map<String, dynamic>)
          : const SchedulePreviewData(),
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

class SchedulePreviewData {
  final String frequency;
  final List<String> weekdays;
  final List<String> tithiIds;
  final int cycleDays;
  final String cycleStart;
  final String cycleEnd;
  final int occurrenceCount;
  final int perDayAmount;
  final String formattedPerDayAmount;
  final String formattedCycleAmount;
  final List<SchedulePreviewDate> dates;
  final SchedulePreviewPricing pricing;

  const SchedulePreviewData({
    this.frequency = '',
    this.weekdays = const [],
    this.tithiIds = const [],
    this.cycleDays = 0,
    this.cycleStart = '',
    this.cycleEnd = '',
    this.occurrenceCount = 0,
    this.perDayAmount = 0,
    this.formattedPerDayAmount = '',
    this.formattedCycleAmount = '',
    this.dates = const [],
    this.pricing = const SchedulePreviewPricing(),
  });

  factory SchedulePreviewData.fromJson(Map<String, dynamic> json) {
    return SchedulePreviewData(
      frequency: json['frequency'] as String? ?? '',
      weekdays: (json['weekdays'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          const [],
      tithiIds: (json['tithiIds'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          const [],
      cycleDays: (json['cycleDays'] as num?)?.toInt() ?? 0,
      cycleStart: json['cycleStart'] as String? ?? '',
      cycleEnd: json['cycleEnd'] as String? ?? '',
      occurrenceCount: (json['occurrenceCount'] as num?)?.toInt() ?? 0,
      perDayAmount: (json['perDayAmount'] as num?)?.toInt() ?? 0,
      formattedPerDayAmount: json['formattedPerDayAmount'] as String? ?? '',
      formattedCycleAmount: json['formattedCycleAmount'] as String? ?? '',
      dates: (json['dates'] as List<dynamic>?)
              ?.map((e) =>
                  SchedulePreviewDate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      pricing: json['pricing'] != null
          ? SchedulePreviewPricing.fromJson(
              json['pricing'] as Map<String, dynamic>)
          : const SchedulePreviewPricing(),
    );
  }

  Map<String, dynamic> toJson() => {
        'frequency': frequency,
        'weekdays': weekdays,
        'tithiIds': tithiIds,
        'cycleDays': cycleDays,
        'cycleStart': cycleStart,
        'cycleEnd': cycleEnd,
        'occurrenceCount': occurrenceCount,
        'perDayAmount': perDayAmount,
        'formattedPerDayAmount': formattedPerDayAmount,
        'formattedCycleAmount': formattedCycleAmount,
        'dates': dates.map((e) => e.toJson()).toList(),
        'pricing': pricing.toJson(),
      };
}

class SchedulePreviewDate {
  final String date;
  final String weekday;
  final int amount;
  final String formattedAmount;

  const SchedulePreviewDate({
    this.date = '',
    this.weekday = '',
    this.amount = 0,
    this.formattedAmount = '',
  });

  factory SchedulePreviewDate.fromJson(Map<String, dynamic> json) {
    return SchedulePreviewDate(
      date: json['date'] as String? ?? '',
      weekday: json['weekday'] as String? ?? '',
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      formattedAmount: json['formattedAmount'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'date': date,
        'weekday': weekday,
        'amount': amount,
        'formattedAmount': formattedAmount,
      };
}

class SchedulePreviewPricing {
  final int vendorAmount;
  final int platformFee;
  final int gstAmount;
  final int grossAmount;
  final String formattedVendorAmount;
  final String formattedPlatformFee;
  final String formattedGstAmount;
  final String formattedGrossAmount;

  const SchedulePreviewPricing({
    this.vendorAmount = 0,
    this.platformFee = 0,
    this.gstAmount = 0,
    this.grossAmount = 0,
    this.formattedVendorAmount = '',
    this.formattedPlatformFee = '',
    this.formattedGstAmount = '',
    this.formattedGrossAmount = '',
  });

  factory SchedulePreviewPricing.fromJson(Map<String, dynamic> json) {
    return SchedulePreviewPricing(
      vendorAmount: (json['vendorAmount'] as num?)?.toInt() ?? 0,
      platformFee: (json['platformFee'] as num?)?.toInt() ?? 0,
      gstAmount: (json['gstAmount'] as num?)?.toInt() ?? 0,
      grossAmount: (json['grossAmount'] as num?)?.toInt() ?? 0,
      formattedVendorAmount: json['formattedVendorAmount'] as String? ?? '',
      formattedPlatformFee: json['formattedPlatformFee'] as String? ?? '',
      formattedGstAmount: json['formattedGstAmount'] as String? ?? '',
      formattedGrossAmount: json['formattedGrossAmount'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'vendorAmount': vendorAmount,
        'platformFee': platformFee,
        'gstAmount': gstAmount,
        'grossAmount': grossAmount,
        'formattedVendorAmount': formattedVendorAmount,
        'formattedPlatformFee': formattedPlatformFee,
        'formattedGstAmount': formattedGstAmount,
        'formattedGrossAmount': formattedGrossAmount,
      };
}

