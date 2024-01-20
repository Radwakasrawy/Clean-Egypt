// ignore_for_file: must_be_immutable

part of 'update_profile_bloc.dart';

/// Represents the state of UpdateProfile in the application.
class UpdateProfileState extends Equatable {
  UpdateProfileState({
    this.nameController,
    this.phoneController,
    this.emailController,
    this.dOBvalueController,
    this.selectedDropDownValue,
    this.updateProfileModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? phoneController;

  TextEditingController? emailController;

  TextEditingController? dOBvalueController;

  SelectionPopupModel? selectedDropDownValue;

  UpdateProfileModel? updateProfileModelObj;

  @override
  List<Object?> get props => [
        nameController,
        phoneController,
        emailController,
        dOBvalueController,
        selectedDropDownValue,
        updateProfileModelObj,
      ];
  UpdateProfileState copyWith({
    TextEditingController? nameController,
    TextEditingController? phoneController,
    TextEditingController? emailController,
    TextEditingController? dOBvalueController,
    SelectionPopupModel? selectedDropDownValue,
    UpdateProfileModel? updateProfileModelObj,
  }) {
    return UpdateProfileState(
      nameController: nameController ?? this.nameController,
      phoneController: phoneController ?? this.phoneController,
      emailController: emailController ?? this.emailController,
      dOBvalueController: dOBvalueController ?? this.dOBvalueController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      updateProfileModelObj:
          updateProfileModelObj ?? this.updateProfileModelObj,
    );
  }
}
