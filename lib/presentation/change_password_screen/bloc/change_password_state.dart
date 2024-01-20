// ignore_for_file: must_be_immutable

part of 'change_password_bloc.dart';

/// Represents the state of ChangePassword in the application.
class ChangePasswordState extends Equatable {
  ChangePasswordState({this.changePasswordModelObj});

  ChangePasswordModel? changePasswordModelObj;

  @override
  List<Object?> get props => [
        changePasswordModelObj,
      ];
  ChangePasswordState copyWith({ChangePasswordModel? changePasswordModelObj}) {
    return ChangePasswordState(
      changePasswordModelObj:
          changePasswordModelObj ?? this.changePasswordModelObj,
    );
  }
}
