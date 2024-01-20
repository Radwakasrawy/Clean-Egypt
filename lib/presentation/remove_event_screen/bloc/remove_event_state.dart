// ignore_for_file: must_be_immutable

part of 'remove_event_bloc.dart';

/// Represents the state of RemoveEvent in the application.
class RemoveEventState extends Equatable {
  RemoveEventState({
    this.date = false,
    this.removeEventModelObj,
  });

  RemoveEventModel? removeEventModelObj;

  bool date;

  @override
  List<Object?> get props => [
        date,
        removeEventModelObj,
      ];
  RemoveEventState copyWith({
    bool? date,
    RemoveEventModel? removeEventModelObj,
  }) {
    return RemoveEventState(
      date: date ?? this.date,
      removeEventModelObj: removeEventModelObj ?? this.removeEventModelObj,
    );
  }
}
