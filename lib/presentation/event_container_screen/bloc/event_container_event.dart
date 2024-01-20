// ignore_for_file: must_be_immutable

part of 'event_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EventContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EventContainerEvent extends Equatable {}

/// Event that is dispatched when the EventContainer widget is first created.
class EventContainerInitialEvent extends EventContainerEvent {
  @override
  List<Object?> get props => [];
}
