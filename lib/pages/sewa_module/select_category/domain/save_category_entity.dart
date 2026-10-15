class SevaCategoryEntity {
  const SevaCategoryEntity({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.emoji,
    required this.availability,
  });

  final String id;
  final String title;
  final String subtitle;
  final String emoji;
  final SevaAvailabilityStatus availability;

  bool get isAvailable => availability == SevaAvailabilityStatus.available;

  static const List<SevaCategoryEntity> allCategories = [
    SevaCategoryEntity(
      id: 'gaushala',
      title: 'Gaushala',
      subtitle: 'Gau seva, Cow feeding',
      emoji: 'assets/new_design/vendor/cow_image.png',
      availability: SevaAvailabilityStatus.available,
    ),
    SevaCategoryEntity(
      id: 'sant_pandit',
      title: 'Sant / Pandit',
      subtitle: 'Puja, Path, Katha',
      emoji: 'assets/new_design/vendor/cow_image.png',
      availability: SevaAvailabilityStatus.comingSoon,
    ),
    SevaCategoryEntity(
      id: 'astrologer',
      title: 'Astrologer',
      subtitle: 'Kundali Vastu, Prashna',
      emoji: 'assets/new_design/vendor/cow_image.png',
      availability: SevaAvailabilityStatus.comingSoon,
    ),
    SevaCategoryEntity(
      id: 'temple',
      title: 'Temple',
      subtitle: 'Prasad, Annadaan',
      emoji: 'assets/new_design/vendor/cow_image.png',
      availability: SevaAvailabilityStatus.comingSoon,
    ),
    SevaCategoryEntity(
      id: 'prasad_delivery',
      title: 'Prasad Delivery',
      subtitle: '1-2 Days',
      emoji: 'assets/new_design/vendor/cow_image.png',
      availability: SevaAvailabilityStatus.comingSoon,
    ),
    SevaCategoryEntity(
      id: 'communities_group',
      title: 'Communities Group',
      subtitle: 'Kirtan, Jagran',
      emoji: 'assets/new_design/vendor/cow_image.png',
      availability: SevaAvailabilityStatus.comingSoon,
    ),
    SevaCategoryEntity(
      id: 'live_darshan',
      title: 'Live Darshan',
      subtitle: 'Scheduled',
      emoji: 'assets/new_design/vendor/cow_image.png',
      availability: SevaAvailabilityStatus.comingSoon,
    ),
    SevaCategoryEntity(
      id: 'diya_donation',
      title: 'Diya Donation',
      subtitle: 'Daily',
      emoji: 'assets/new_design/vendor/cow_image.png',
      availability: SevaAvailabilityStatus.comingSoon,
    ),
  ];
}

enum SevaAvailabilityStatus { available, comingSoon }
