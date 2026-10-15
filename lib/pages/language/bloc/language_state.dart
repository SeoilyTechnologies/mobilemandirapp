part of 'language_bloc.dart';

class LanguageState extends Equatable {
  final Locale locale;
  final bool isConnected;

  const LanguageState(
      this.locale, {
        this.isConnected = true,
      });

  LanguageState copyWith({
    Locale? locale,
    bool? isConnected,
  }) {
    return LanguageState(
      locale ?? this.locale,
      isConnected: isConnected ?? this.isConnected,
    );
  }

  @override
  List<Object?> get props => [locale, isConnected];
}