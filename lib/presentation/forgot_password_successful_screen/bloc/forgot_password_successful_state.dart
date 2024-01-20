// ignore_for_file: must_be_immutable

part of 'forgot_password_successful_bloc.dart';

/// Represents the state of ForgotPasswordSuccessful in the application.
class ForgotPasswordSuccessfulState extends Equatable {
  ForgotPasswordSuccessfulState({this.forgotPasswordSuccessfulModelObj});

  ForgotPasswordSuccessfulModel? forgotPasswordSuccessfulModelObj;

  @override
  List<Object?> get props => [
        forgotPasswordSuccessfulModelObj,
      ];
  ForgotPasswordSuccessfulState copyWith(
      {ForgotPasswordSuccessfulModel? forgotPasswordSuccessfulModelObj}) {
    return ForgotPasswordSuccessfulState(
      forgotPasswordSuccessfulModelObj: forgotPasswordSuccessfulModelObj ??
          this.forgotPasswordSuccessfulModelObj,
    );
  }
}
