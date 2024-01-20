// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:clean_egypt/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [complete_your_profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CompleteYourProfileModel extends Equatable {CompleteYourProfileModel({this.dropdownItemList = const []}) {  }

List<SelectionPopupModel> dropdownItemList;

CompleteYourProfileModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return CompleteYourProfileModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
