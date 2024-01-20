import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:clean_egypt/presentation/complete_your_profile_screen/models/complete_your_profile_model.dart';part 'complete_your_profile_event.dart';part 'complete_your_profile_state.dart';/// A bloc that manages the state of a CompleteYourProfile according to the event that is dispatched to it.
class CompleteYourProfileBloc extends Bloc<CompleteYourProfileEvent, CompleteYourProfileState> {CompleteYourProfileBloc(CompleteYourProfileState initialState) : super(initialState) { on<CompleteYourProfileInitialEvent>(_onInitialize); on<ChangeCountryEvent>(_changeCountry); on<ChangeDropDownEvent>(_changeDropDown); }

_changeCountry(ChangeCountryEvent event, Emitter<CompleteYourProfileState> emit, ) { emit(state.copyWith(selectedCountry: event.value)); } 
_changeDropDown(ChangeDropDownEvent event, Emitter<CompleteYourProfileState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(CompleteYourProfileInitialEvent event, Emitter<CompleteYourProfileState> emit, ) async  { emit(state.copyWith(userNameController: TextEditingController(), phoneNumberController: TextEditingController(), addressController: TextEditingController(), zipcodeController: TextEditingController())); emit(state.copyWith(completeYourProfileModelObj: state.completeYourProfileModelObj?.copyWith(dropdownItemList: fillDropdownItemList()))); } 
 }