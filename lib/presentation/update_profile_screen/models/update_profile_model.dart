// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:clean_egypt/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [update_profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class UpdateProfileModel extends Equatable {UpdateProfileModel({this.dropdownItemList = const []}) {  }

List<SelectionPopupModel> dropdownItemList;

UpdateProfileModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return UpdateProfileModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
