// ignore_for_file: must_be_immutable

part of 'complain_bloc.dart';

/// Represents the state of Complain in the application.
class ComplainState extends Equatable {
  ComplainState({
    this.addressController,
    this.complainModelObj,
  });

  TextEditingController? addressController;

  ComplainModel? complainModelObj;

  @override
  List<Object?> get props => [
        addressController,
        complainModelObj,
      ];
  ComplainState copyWith({
    TextEditingController? addressController,
    ComplainModel? complainModelObj,
  }) {
    return ComplainState(
      addressController: addressController ?? this.addressController,
      complainModelObj: complainModelObj ?? this.complainModelObj,
    );
  }
}
