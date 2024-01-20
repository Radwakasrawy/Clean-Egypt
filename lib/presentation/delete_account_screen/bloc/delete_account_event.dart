// ignore_for_file: must_be_immutable

part of 'delete_account_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DeleteAccount widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DeleteAccountEvent extends Equatable {}

/// Event that is dispatched when the DeleteAccount widget is first created.
class DeleteAccountInitialEvent extends DeleteAccountEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends DeleteAccountEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
