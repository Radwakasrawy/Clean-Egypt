// ignore_for_file: must_be_immutable

part of 'reset_password_bloc.dart';

/// Represents the state of ResetPassword in the application.
class ResetPasswordState extends Equatable {
  ResetPasswordState({
    this.newpasswordController,
    this.newpasswordController1,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.rememberMe = false,
    this.resetPasswordModelObj,
  });

  TextEditingController? newpasswordController;

  TextEditingController? newpasswordController1;

  ResetPasswordModel? resetPasswordModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  bool rememberMe;

  @override
  List<Object?> get props => [
        newpasswordController,
        newpasswordController1,
        isShowPassword,
        isShowPassword1,
        rememberMe,
        resetPasswordModelObj,
      ];
  ResetPasswordState copyWith({
    TextEditingController? newpasswordController,
    TextEditingController? newpasswordController1,
    bool? isShowPassword,
    bool? isShowPassword1,
    bool? rememberMe,
    ResetPasswordModel? resetPasswordModelObj,
  }) {
    return ResetPasswordState(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      newpasswordController1:
          newpasswordController1 ?? this.newpasswordController1,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      rememberMe: rememberMe ?? this.rememberMe,
      resetPasswordModelObj:
          resetPasswordModelObj ?? this.resetPasswordModelObj,
    );
  }
}
