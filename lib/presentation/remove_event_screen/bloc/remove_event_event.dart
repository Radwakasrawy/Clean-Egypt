// ignore_for_file: must_be_immutable

part of 'remove_event_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RemoveEvent widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RemoveEventEvent extends Equatable {}

/// Event that is dispatched when the RemoveEvent widget is first created.
class RemoveEventInitialEvent extends RemoveEventEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends RemoveEventEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
