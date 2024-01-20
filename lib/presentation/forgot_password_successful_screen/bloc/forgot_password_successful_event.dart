// ignore_for_file: must_be_immutable

part of 'forgot_password_successful_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ForgotPasswordSuccessful widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ForgotPasswordSuccessfulEvent extends Equatable {}

/// Event that is dispatched when the ForgotPasswordSuccessful widget is first created.
class ForgotPasswordSuccessfulInitialEvent
    extends ForgotPasswordSuccessfulEvent {
  @override
  List<Object?> get props => [];
}
