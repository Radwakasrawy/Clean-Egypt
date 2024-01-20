// ignore_for_file: must_be_immutable

part of 'map_pin_bloc.dart';

/// Represents the state of MapPin in the application.
class MapPinState extends Equatable {
  MapPinState({
    this.searchController,
    this.mapPinModelObj,
  });

  TextEditingController? searchController;

  MapPinModel? mapPinModelObj;

  @override
  List<Object?> get props => [
        searchController,
        mapPinModelObj,
      ];
  MapPinState copyWith({
    TextEditingController? searchController,
    MapPinModel? mapPinModelObj,
  }) {
    return MapPinState(
      searchController: searchController ?? this.searchController,
      mapPinModelObj: mapPinModelObj ?? this.mapPinModelObj,
    );
  }
}
