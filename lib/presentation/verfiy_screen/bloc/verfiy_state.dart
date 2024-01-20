// ignore_for_file: must_be_immutable

part of 'verfiy_bloc.dart';

/// Represents the state of Verfiy in the application.
class VerfiyState extends Equatable {
  VerfiyState({
    this.otpController,
    this.verfiyModelObj,
  });

  TextEditingController? otpController;

  VerfiyModel? verfiyModelObj;

  @override
  List<Object?> get props => [
        otpController,
        verfiyModelObj,
      ];
  VerfiyState copyWith({
    TextEditingController? otpController,
    VerfiyModel? verfiyModelObj,
  }) {
    return VerfiyState(
      otpController: otpController ?? this.otpController,
      verfiyModelObj: verfiyModelObj ?? this.verfiyModelObj,
    );
  }
}
