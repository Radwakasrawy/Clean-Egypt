// ignore_for_file: must_be_immutable

part of 'create_account_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateAccount widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateAccountEvent extends Equatable {}

/// Event that is dispatched when the CreateAccount widget is first created.
class CreateAccountInitialEvent extends CreateAccountEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends CreateAccountEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends CreateAccountEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
