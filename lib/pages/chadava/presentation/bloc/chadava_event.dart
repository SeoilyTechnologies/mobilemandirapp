import 'package:freezed_annotation/freezed_annotation.dart';

part 'chadava_event.freezed.dart';

@freezed
abstract class ChadavaEvent with _$ChadavaEvent {
  const factory ChadavaEvent.loadData() = LoadChadavaData;
  const factory ChadavaEvent.selectTab(int tabIndex) = SelectChadavaTab;
  const factory ChadavaEvent.selectItem(String itemId) = SelectChadavaItem;
}
