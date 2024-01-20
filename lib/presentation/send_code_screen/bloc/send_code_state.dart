// ignore_for_file: must_be_immutable

part of 'send_code_bloc.dart';

/// Represents the state of SendCode in the application.
class SendCodeState extends Equatable {
  SendCodeState({this.sendCodeModelObj});

  SendCodeModel? sendCodeModelObj;

  @override
  List<Object?> get props => [
        sendCodeModelObj,
      ];
  SendCodeState copyWith({SendCodeModel? sendCodeModelObj}) {
    return SendCodeState(
      sendCodeModelObj: sendCodeModelObj ?? this.sendCodeModelObj,
    );
  }
}
