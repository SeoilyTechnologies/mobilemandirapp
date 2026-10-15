import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

import '../../../common/local/SharedPrefs.dart';
import '../../../common/service_locator/setivelocator.dart';

part 'language_event.dart';
part 'language_state.dart';




class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  static const String _localeKey = 'selected_locale';

  final SharedPrefs sharedPrefs = getIt<SharedPrefs>();

  LanguageBloc() : super(const LanguageState(Locale('en'))) {
    on<ChangeLanguageEvent>(_onChangeLanguage);
    on<LoadSavedLanguageEvent>(_onLoadSavedLanguage);

    // Automatically load saved locale when app starts
    add(LoadSavedLanguageEvent());
  }

  Future<void> _onChangeLanguage(
      ChangeLanguageEvent event,
      Emitter<LanguageState> emit,
      ) async {
    await sharedPrefs.setString(_localeKey, event.locale.languageCode);
    emit(LanguageState(event.locale));
  }

  Future<void> _onLoadSavedLanguage(
      LoadSavedLanguageEvent event,
      Emitter<LanguageState> emit,
      ) async {
    final code = sharedPrefs.getString(_localeKey).isNotEmpty
        ? sharedPrefs.getString(_localeKey)
        : 'en';
    emit(LanguageState(Locale(code)));
  }
}
