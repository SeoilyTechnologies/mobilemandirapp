class SevaSubscriptionResponse {
  final bool success;
  final String message;
  final SevaSubscriptionData data;
  final Object? errors;

  const SevaSubscriptionResponse({
    this.success = false,
    this.message = '',
    this.data = const SevaSubscriptionData(),
    this.errors,
  });

  factory SevaSubscriptionResponse.fromJson(Map<String, dynamic> json) {
    return SevaSubscriptionResponse(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: json['data'] != null && json['data'] is Map<String, dynamic>
          ? SevaSubscriptionData.fromJson(json['data'] as Map<String, dynamic>)
          : const SevaSubscriptionData(),
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

class SevaSubscriptionData {
  final List<SevaSubscriptionItem> list;
  final SubscriptionPagination pagination;

  const SevaSubscriptionData({
    this.list = const [],
    this.pagination = const SubscriptionPagination(),
  });

  factory SevaSubscriptionData.fromJson(Map<String, dynamic> json) {
    return SevaSubscriptionData(
      list: (json['list'] as List<dynamic>?)
              ?.whereType<Map<String, dynamic>>()
              .map((e) => SevaSubscriptionItem.fromJson(e))
              .toList() ??
          const [],
      pagination: json['pagination'] != null &&
              json['pagination'] is Map<String, dynamic>
          ? SubscriptionPagination.fromJson(
              json['pagination'] as Map<String, dynamic>,
            )
          : const SubscriptionPagination(),
    );
  }

  Map<String, dynamic> toJson() => {
        'list': list.map((e) => e.toJson()).toList(),
        'pagination': pagination.toJson(),
      };
}

class SevaSubscriptionItem {
  final String id;
  final String sevaName;
  final String sevaNameHi;
  final String donorName;
  final String frequency;
  final List<String> weekdays;
  final int amount;
  final String formattedAmount;
  final int vendorAmount;
  final String formattedVendorAmount;
  final String status;
  final String statusLabel;
  final String cycleStartAt;
  final String cycleEndAt;
  final String createdAt;
  final SubscriptionService service;
  final int totalOccurrences;
  final int completedOccurrences;
  final bool proofAvailable;

  const SevaSubscriptionItem({
    this.id = '',
    this.sevaName = '',
    this.sevaNameHi = '',
    this.donorName = '',
    this.frequency = '',
    this.weekdays = const [],
    this.amount = 0,
    this.formattedAmount = '',
    this.vendorAmount = 0,
    this.formattedVendorAmount = '',
    this.status = '',
    this.statusLabel = '',
    this.cycleStartAt = '',
    this.cycleEndAt = '',
    this.createdAt = '',
    this.service = const SubscriptionService(),
    this.totalOccurrences = 0,
    this.completedOccurrences = 0,
    this.proofAvailable = false,
  });

  factory SevaSubscriptionItem.fromJson(Map<String, dynamic> json) {
    final bool proofAvail = () {
      if (json['proof'] != null) {
        if (json['proof'] is Map) {
          final pMap = json['proof'] as Map<String, dynamic>;
          if (pMap['available'] == true) return true;
          if (pMap['media'] != null) {
            final m = pMap['media'];
            if (m is Map && (m['url']?.toString().isNotEmpty ?? false)) {
              return true;
            }
          }
        } else if (json['proof'] is bool) {
          return json['proof'] as bool;
        }
      }
      if (json['proofAvailable'] as bool? ?? false) return true;
      if (json['hasVideoProof'] as bool? ?? false) return true;
      if (json['hasProof'] as bool? ?? false) return true;
      if (json['proofs'] is List && (json['proofs'] as List).isNotEmpty) {
        return true;
      }
      return false;
    }();

    return SevaSubscriptionItem(
      id: json['_id'] as String? ?? json['id'] as String? ?? '',
      sevaName: json['sevaName'] as String? ?? '',
      sevaNameHi: json['sevaNameHi'] as String? ?? '',
      donorName: json['donorName'] as String? ?? '',
      frequency: json['frequency'] as String? ?? '',
      weekdays: (json['weekdays'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          const [],
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      formattedAmount: json['formattedAmount'] as String? ?? '',
      vendorAmount: (json['vendorAmount'] as num?)?.toInt() ?? 0,
      formattedVendorAmount: json['formattedVendorAmount'] as String? ?? '',
      status: json['status'] as String? ?? '',
      statusLabel: json['statusLabel'] as String? ?? '',
      cycleStartAt: json['cycleStartAt'] as String? ?? '',
      cycleEndAt: json['cycleEndAt'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
      service: json['service'] != null && json['service'] is Map<String, dynamic>
          ? SubscriptionService.fromJson(json['service'] as Map<String, dynamic>)
          : const SubscriptionService(),
      totalOccurrences: (json['totalOccurrences'] as num?)?.toInt() ?? 0,
      completedOccurrences:
          (json['completedOccurrences'] as num?)?.toInt() ?? 0,
      proofAvailable: proofAvail,
    );
  }

  Map<String, dynamic> toJson() => {
        '_id': id,
        'sevaName': sevaName,
        'sevaNameHi': sevaNameHi,
        'donorName': donorName,
        'frequency': frequency,
        'weekdays': weekdays,
        'amount': amount,
        'formattedAmount': formattedAmount,
        'vendorAmount': vendorAmount,
        'formattedVendorAmount': formattedVendorAmount,
        'status': status,
        'statusLabel': statusLabel,
        'cycleStartAt': cycleStartAt,
        'cycleEndAt': cycleEndAt,
        'createdAt': createdAt,
        'service': service.toJson(),
        'totalOccurrences': totalOccurrences,
        'completedOccurrences': completedOccurrences,
        'proofAvailable': proofAvailable,
      };
}

class SubscriptionService {
  final String id;
  final String name;
  final String nameHi;
  final String nameEn;
  final String slug;
  final String icon;

  const SubscriptionService({
    this.id = '',
    this.name = '',
    this.nameHi = '',
    this.nameEn = '',
    this.slug = '',
    this.icon = '',
  });

  factory SubscriptionService.fromJson(Map<String, dynamic> json) {
    String nameVal = '';
    String nameHiVal = json['nameHi'] as String? ?? '';
    String nameEnVal = json['nameEn'] as String? ?? '';

    final rawName = json['name'];
    if (rawName is Map) {
      nameHiVal = rawName['hi']?.toString() ?? nameHiVal;
      nameEnVal = rawName['en']?.toString() ?? nameEnVal;
      nameVal = nameEnVal.isNotEmpty ? nameEnVal : nameHiVal;
    } else if (rawName is String) {
      nameVal = rawName;
    }

    final rawIcon = json['icon'] ??
        json['image'] ??
        json['photo'] ??
        json['iconUrl'] ??
        json['imageUrl'] ??
        '';

    return SubscriptionService(
      id: json['_id'] as String? ?? json['id'] as String? ?? '',
      name: nameVal,
      nameHi: nameHiVal,
      nameEn: nameEnVal,
      slug: json['slug'] as String? ?? '',
      icon: rawIcon.toString(),
    );
  }

  Map<String, dynamic> toJson() => {
        '_id': id,
        'name': {'hi': nameHi, 'en': nameEn},
        'slug': slug,
        'icon': icon,
      };
}

class SubscriptionPagination {
  final int page;
  final int limit;
  final int total;
  final int pages;

  const SubscriptionPagination({
    this.page = 1,
    this.limit = 50,
    this.total = 0,
    this.pages = 1,
  });

  bool get hasNextPage => page < pages;

  factory SubscriptionPagination.fromJson(Map<String, dynamic> json) {
    return SubscriptionPagination(
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 50,
      total: (json['total'] as num?)?.toInt() ??
          (json['totalItems'] as num?)?.toInt() ??
          0,
      pages: (json['pages'] as num?)?.toInt() ??
          (json['totalPages'] as num?)?.toInt() ??
          1,
    );
  }

  Map<String, dynamic> toJson() => {
        'page': page,
        'limit': limit,
        'total': total,
        'pages': pages,
      };
}
