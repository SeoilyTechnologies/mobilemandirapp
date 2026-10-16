import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_page_event.freezed.dart';

@freezed
abstract class DynamicPageEvent with _$DynamicPageEvent {
  const factory DynamicPageEvent.load(String slug) = LoadDynamicPage;
}
