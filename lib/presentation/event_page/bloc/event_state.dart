// ignore_for_file: must_be_immutable

part of 'event_bloc.dart';

/// Represents the state of Event in the application.
class EventState extends Equatable {
  EventState({
    this.searchController,
    this.februaryth = false,
    this.eventModelObj,
  });

  TextEditingController? searchController;

  EventModel? eventModelObj;

  bool februaryth;

  @override
  List<Object?> get props => [
        searchController,
        februaryth,
        eventModelObj,
      ];
  EventState copyWith({
    TextEditingController? searchController,
    bool? februaryth,
    EventModel? eventModelObj,
  }) {
    return EventState(
      searchController: searchController ?? this.searchController,
      februaryth: februaryth ?? this.februaryth,
      eventModelObj: eventModelObj ?? this.eventModelObj,
    );
  }
}
