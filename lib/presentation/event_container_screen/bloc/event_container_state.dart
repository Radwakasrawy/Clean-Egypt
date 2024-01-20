// ignore_for_file: must_be_immutable

part of 'event_container_bloc.dart';

/// Represents the state of EventContainer in the application.
class EventContainerState extends Equatable {
  EventContainerState({this.eventContainerModelObj});

  EventContainerModel? eventContainerModelObj;

  @override
  List<Object?> get props => [
        eventContainerModelObj,
      ];
  EventContainerState copyWith({EventContainerModel? eventContainerModelObj}) {
    return EventContainerState(
      eventContainerModelObj:
          eventContainerModelObj ?? this.eventContainerModelObj,
    );
  }
}
