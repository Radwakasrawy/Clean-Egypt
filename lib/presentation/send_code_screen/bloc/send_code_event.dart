// ignore_for_file: must_be_immutable

part of 'send_code_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SendCode widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SendCodeEvent extends Equatable {}

/// Event that is dispatched when the SendCode widget is first created.
class SendCodeInitialEvent extends SendCodeEvent {
  @override
  List<Object?> get props => [];
}
