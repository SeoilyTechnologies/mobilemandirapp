class YouTubePlaylistVideoModel {
  final String videoId;
  final String title;
  final String publishedAt;
  final String thumbnailUrl;

  YouTubePlaylistVideoModel({
    required this.videoId,
    required this.title,
    required this.publishedAt,
    required this.thumbnailUrl,
  });

  factory YouTubePlaylistVideoModel.fromJson(Map<String, dynamic> json) {
    final snippet = json['snippet'] ?? {};
    final contentDetails = json['contentDetails'] ?? {};
    final thumbnails = snippet['thumbnails'] ?? {};
    final standardThumb = thumbnails['standard'] ?? thumbnails['high'] ?? {};

    return YouTubePlaylistVideoModel(
      videoId: contentDetails['videoId'] ?? '',
      title: snippet['title'] ?? '',
      publishedAt: snippet['publishedAt'] ?? '',
      thumbnailUrl: standardThumb['url'] ?? '',
    );
  }
}
