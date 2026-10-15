part of 'splash_bloc.dart';

sealed class SplashEvent extends Equatable {
  const SplashEvent();
}

class StartTimerEvent extends SplashEvent {
  @override
  List<Object?> get props => [];
}

class OpenDetailEvent extends SplashEvent{
  @override
  List<Object?> get props => [];
}

class RefreshTokenEvent extends SplashEvent{
  RefreshTokenEvent();
  @override
  List<Object?> get props => [];
}



