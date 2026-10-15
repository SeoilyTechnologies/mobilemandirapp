class ThankYouSevaApiResponse {
  final bool success;
  final String message;
  final ThankYouSevaData data;
  final dynamic errors;

  const ThankYouSevaApiResponse({
    this.success = false,
    this.message = '',
    this.data = const ThankYouSevaData(),
    this.errors,
  });

  factory ThankYouSevaApiResponse.fromJson(Map<String, dynamic> json) {
    return ThankYouSevaApiResponse(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: json['data'] != null
          ? ThankYouSevaData.fromJson(json['data'] as Map<String, dynamic>)
          : const ThankYouSevaData(),
      errors: json['errors'],
    );
  }

  Map<String, dynamic> toJson() => {
        'success': success,
        'message': message,
        'data': data.toJson(),
        'errors': errors,
      };

  ThankYouSevaApiResponse copyWith({
    bool? success,
    String? message,
    ThankYouSevaData? data,
    dynamic errors,
  }) {
    return ThankYouSevaApiResponse(
      success: success ?? this.success,
      message: message ?? this.message,
      data: data ?? this.data,
      errors: errors ?? this.errors,
    );
  }
}

class ThankYouSevaData {
  final String sevaId;
  final String displaySevaId;
  final String paymentStatus;
  final String heroImage;
  final bool showGaushalaFields;
  final String thankYouTitle;
  final String thankYouMessage;
  final Impact impact;
  final Receipt receipt;
  final Service service;
  final Transaction transaction;
  final List<LiveStatus> liveStatus;
  final List<UpcomingSevaDate> upcoming;

  const ThankYouSevaData({
    this.sevaId = '',
    this.displaySevaId = '',
    this.paymentStatus = '',
    this.heroImage = '',
    this.showGaushalaFields = false,
    this.thankYouTitle = '',
    this.thankYouMessage = '',
    this.impact = const Impact(),
    this.receipt = const Receipt(),
    this.service = const Service(),
    this.transaction = const Transaction(),
    this.liveStatus = const [],
    this.upcoming = const [],
  });

  factory ThankYouSevaData.fromJson(Map<String, dynamic> json) {
    final serviceData = json['service'] != null
        ? Service.fromJson(json['service'] as Map<String, dynamic>)
        : const Service();

    Receipt receiptData;
    if (json['receipt'] != null) {
      receiptData = Receipt.fromJson(json['receipt'] as Map<String, dynamic>);
    } else {
      receiptData = Receipt(
        donorName: json['donorName'] as String? ?? '',
        sevaType: serviceData.name,
      );
    }

    Transaction transactionData;
    if (json['transaction'] != null) {
      transactionData =
          Transaction.fromJson(json['transaction'] as Map<String, dynamic>);
    } else {
      transactionData = Transaction(
        formattedGrossAmount: json['formattedAmount'] as String? ?? '',
      );
    }

    return ThankYouSevaData(
      sevaId: (json['sevaId'] as String?) ??
          (json['subscriptionId'] as String?) ??
          '',
      displaySevaId: json['displaySevaId'] as String? ?? '',
      paymentStatus: json['paymentStatus'] as String? ?? '',
      heroImage: json['heroImage'] as String? ?? '',
      showGaushalaFields: json['showGaushalaFields'] as bool? ?? false,
      thankYouTitle: json['thankYouTitle'] as String? ?? 'Thank You!',
      thankYouMessage: json['thankYouMessage'] as String? ?? '',
      impact: json['impact'] != null
          ? Impact.fromJson(json['impact'] as Map<String, dynamic>)
          : const Impact(),
      receipt: receiptData,
      service: serviceData,
      transaction: transactionData,
      liveStatus: (json['liveStatus'] as List<dynamic>?)
              ?.map((e) => LiveStatus.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      upcoming: (json['upcoming'] as List<dynamic>?)
              ?.map((e) => UpcomingSevaDate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );
  }

  Map<String, dynamic> toJson() => {
        'sevaId': sevaId,
        'displaySevaId': displaySevaId,
        'paymentStatus': paymentStatus,
        'heroImage': heroImage,
        'showGaushalaFields': showGaushalaFields,
        'thankYouTitle': thankYouTitle,
        'thankYouMessage': thankYouMessage,
        'impact': impact.toJson(),
        'receipt': receipt.toJson(),
        'service': service.toJson(),
        'transaction': transaction.toJson(),
        'liveStatus': liveStatus.map((e) => e.toJson()).toList(),
        'upcoming': upcoming.map((e) => e.toJson()).toList(),
      };
}

class UpcomingSevaDate {
  final String date;
  final int amount;
  final String formattedAmount;
  final String status;

  const UpcomingSevaDate({
    this.date = '',
    this.amount = 0,
    this.formattedAmount = '',
    this.status = '',
  });

  factory UpcomingSevaDate.fromJson(Map<String, dynamic> json) {
    return UpcomingSevaDate(
      date: json['date'] as String? ?? '',
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      formattedAmount: json['formattedAmount'] as String? ?? '',
      status: json['status'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'date': date,
        'amount': amount,
        'formattedAmount': formattedAmount,
        'status': status,
      };
}

class Impact {
  final String title;
  final String message;

  const Impact({this.title = '', this.message = ''});

  factory Impact.fromJson(Map<String, dynamic> json) {
    return Impact(
      title: json['title'] as String? ?? '',
      message: json['message'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() => {'title': title, 'message': message};
}

class Receipt {
  final String title;
  final String sevaType;
  final bool showGaushalaFields;
  final String gaushala;
  final String donorName;
  final String paidAt;
  final String formattedPaidAt;
  final String paymentStatusLabel;
  final bool gpsVerified;
  final String gpsVerifiedLabel;

  const Receipt({
    this.title = '',
    this.sevaType = '',
    this.showGaushalaFields = false,
    this.gaushala = '',
    this.donorName = '',
    this.paidAt = '',
    this.formattedPaidAt = '',
    this.paymentStatusLabel = '',
    this.gpsVerified = false,
    this.gpsVerifiedLabel = '',
  });

  factory Receipt.fromJson(Map<String, dynamic> json) {
    return Receipt(
      title: json['title'] as String? ?? '',
      sevaType: json['sevaType'] as String? ?? '',
      showGaushalaFields: json['showGaushalaFields'] as bool? ?? false,
      gaushala: json['gaushala'] as String? ?? '',
      donorName: json['donorName'] as String? ?? '',
      paidAt: json['paidAt'] as String? ?? '',
      formattedPaidAt: json['formattedPaidAt'] as String? ?? '',
      paymentStatusLabel: json['paymentStatusLabel'] as String? ?? '',
      gpsVerified: json['gpsVerified'] as bool? ?? false,
      gpsVerifiedLabel: json['gpsVerifiedLabel'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'sevaType': sevaType,
        'showGaushalaFields': showGaushalaFields,
        'gaushala': gaushala,
        'donorName': donorName,
        'paidAt': paidAt,
        'formattedPaidAt': formattedPaidAt,
        'paymentStatusLabel': paymentStatusLabel,
        'gpsVerified': gpsVerified,
        'gpsVerifiedLabel': gpsVerifiedLabel,
      };
}

class Service {
  final String id;
  final String name;
  final String slug;
  final String icon;

  const Service({
    this.id = '',
    this.name = '',
    this.slug = '',
    this.icon = '',
  });

  factory Service.fromJson(Map<String, dynamic> json) {
    return Service(
      id: json['_id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        '_id': id,
        'name': name,
        'slug': slug,
        'icon': icon,
      };
}

class Transaction {
  final String orderId;
  final String status;
  final int vendorAmount;
  final int platformFee;
  final int gstAmount;
  final int grossAmount;
  final String formattedVendorAmount;
  final String formattedPlatformFee;
  final String formattedGstAmount;
  final String formattedGrossAmount;

  const Transaction({
    this.orderId = '',
    this.status = '',
    this.vendorAmount = 0,
    this.platformFee = 0,
    this.gstAmount = 0,
    this.grossAmount = 0,
    this.formattedVendorAmount = '',
    this.formattedPlatformFee = '',
    this.formattedGstAmount = '',
    this.formattedGrossAmount = '',
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      orderId: json['orderId'] as String? ?? '',
      status: json['status'] as String? ?? '',
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
        'orderId': orderId,
        'status': status,
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

class LiveStatus {
  final String key;
  final String title;
  final String subtitle;
  final String state;
  final String at;
  final dynamic action;

  const LiveStatus({
    this.key = '',
    this.title = '',
    this.subtitle = '',
    this.state = '',
    this.at = '',
    this.action,
  });

  factory LiveStatus.fromJson(Map<String, dynamic> json) {
    return LiveStatus(
      key: json['key'] as String? ?? '',
      title: json['title'] as String? ?? '',
      subtitle: json['subtitle'] as String? ?? '',
      state: json['state'] as String? ?? '',
      at: json['at'] as String? ?? '',
      action: json['action'],
    );
  }

  Map<String, dynamic> toJson() => {
        'key': key,
        'title': title,
        'subtitle': subtitle,
        'state': state,
        'at': at,
        'action': action,
      };
}