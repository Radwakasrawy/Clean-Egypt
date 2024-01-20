// ignore_for_file: must_be_immutable

part of 'delete_account_bloc.dart';

/// Represents the state of DeleteAccount in the application.
class DeleteAccountState extends Equatable {
  DeleteAccountState({
    this.otpController,
    this.deleteAccountModelObj,
  });

  TextEditingController? otpController;

  DeleteAccountModel? deleteAccountModelObj;

  @override
  List<Object?> get props => [
        otpController,
        deleteAccountModelObj,
      ];
  DeleteAccountState copyWith({
    TextEditingController? otpController,
    DeleteAccountModel? deleteAccountModelObj,
  }) {
    return DeleteAccountState(
      otpController: otpController ?? this.otpController,
      deleteAccountModelObj:
          deleteAccountModelObj ?? this.deleteAccountModelObj,
    );
  }
}
