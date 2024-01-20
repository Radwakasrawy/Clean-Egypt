// ignore_for_file: must_be_immutable

part of 'verfiy_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Verfiy widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VerfiyEvent extends Equatable {}

/// Event that is dispatched when the Verfiy widget is first created.
class VerfiyInitialEvent extends VerfiyEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends VerfiyEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
