// ignore_for_file: must_be_immutable

part of 'complete_your_profile_bloc.dart';

/// Represents the state of CompleteYourProfile in the application.
class CompleteYourProfileState extends Equatable {
  CompleteYourProfileState({
    this.userNameController,
    this.phoneNumberController,
    this.addressController,
    this.zipcodeController,
    this.selectedDropDownValue,
    this.selectedCountry,
    this.completeYourProfileModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? phoneNumberController;

  TextEditingController? addressController;

  TextEditingController? zipcodeController;

  SelectionPopupModel? selectedDropDownValue;

  CompleteYourProfileModel? completeYourProfileModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        userNameController,
        phoneNumberController,
        addressController,
        zipcodeController,
        selectedDropDownValue,
        selectedCountry,
        completeYourProfileModelObj,
      ];
  CompleteYourProfileState copyWith({
    TextEditingController? userNameController,
    TextEditingController? phoneNumberController,
    TextEditingController? addressController,
    TextEditingController? zipcodeController,
    SelectionPopupModel? selectedDropDownValue,
    Country? selectedCountry,
    CompleteYourProfileModel? completeYourProfileModelObj,
  }) {
    return CompleteYourProfileState(
      userNameController: userNameController ?? this.userNameController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      addressController: addressController ?? this.addressController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      completeYourProfileModelObj:
          completeYourProfileModelObj ?? this.completeYourProfileModelObj,
    );
  }
}
