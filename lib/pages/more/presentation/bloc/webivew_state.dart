class WebViewState {
  final String title;
  final String url;
  final bool isLoading;
final bool isAccountDeleted;
  WebViewState({
    required this.title,
    required this.url,
    required this.isLoading,
    this.isAccountDeleted = false,
  });

  factory WebViewState.initial() {
    return WebViewState(title: '', url: '', isLoading: false,isAccountDeleted: false);
  }

  WebViewState copyWith({
    String? title,
    String? url,
    bool? isLoading,
    bool? isAccountDeleted,
  }) {
    return WebViewState(
      title: title ?? this.title,
      url: url ?? this.url,
      isAccountDeleted: isAccountDeleted??this.isAccountDeleted,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
