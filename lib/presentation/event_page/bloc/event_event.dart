// ignore_for_file: must_be_immutable

part of 'event_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Event widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EventEvent extends Equatable {}

/// Event that is dispatched when the Event widget is first created.
class EventInitialEvent extends EventEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends EventEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
