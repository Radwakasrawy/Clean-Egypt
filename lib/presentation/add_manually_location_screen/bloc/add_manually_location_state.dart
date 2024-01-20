// ignore_for_file: must_be_immutable

part of 'add_manually_location_bloc.dart';

/// Represents the state of AddManuallyLocation in the application.
class AddManuallyLocationState extends Equatable {
  AddManuallyLocationState({this.addManuallyLocationModelObj});

  AddManuallyLocationModel? addManuallyLocationModelObj;

  @override
  List<Object?> get props => [
        addManuallyLocationModelObj,
      ];
  AddManuallyLocationState copyWith(
      {AddManuallyLocationModel? addManuallyLocationModelObj}) {
    return AddManuallyLocationState(
      addManuallyLocationModelObj:
          addManuallyLocationModelObj ?? this.addManuallyLocationModelObj,
    );
  }
}
