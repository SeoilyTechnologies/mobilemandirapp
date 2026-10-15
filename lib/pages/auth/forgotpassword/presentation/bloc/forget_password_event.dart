part of 'forget_password_bloc.dart';

sealed class ForgetPasswordEvent extends Equatable {
  const ForgetPasswordEvent();
}


class ForgetPasswordEmailChanged extends ForgetPasswordEvent {
  final String email;
  ForgetPasswordEmailChanged(this.email);
  @override
  List<Object?> get props => [email];
}

class ForgetPasswordSubmittedEvent extends ForgetPasswordEvent {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ForgetPasswordResetEvent extends ForgetPasswordEvent {
  @override
  List<Object?> get props => [];
}
