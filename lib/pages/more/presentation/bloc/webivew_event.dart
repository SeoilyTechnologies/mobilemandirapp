abstract class WebViewEvent {}

class LoadWebView extends WebViewEvent {
  final String title;
  final String url;

  LoadWebView({required this.title, required this.url});
}
class DeleteAccountEvent extends WebViewEvent {
  final Map<String, dynamic> body;

  DeleteAccountEvent({required this.body});
}
class StartLoading extends WebViewEvent{
  StartLoading();
}
class StopLoading extends WebViewEvent{
  StopLoading();
}
