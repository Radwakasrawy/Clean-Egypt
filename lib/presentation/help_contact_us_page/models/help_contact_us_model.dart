// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:clean_egypt/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [help_contact_us_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HelpContactUsModel extends Equatable {HelpContactUsModel({this.dropdownItemList = const [], this.dropdownItemList1 = const [], this.dropdownItemList2 = const [], this.dropdownItemList3 = const [], this.dropdownItemList4 = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<SelectionPopupModel> dropdownItemList1;

List<SelectionPopupModel> dropdownItemList2;

List<SelectionPopupModel> dropdownItemList3;

List<SelectionPopupModel> dropdownItemList4;

HelpContactUsModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<SelectionPopupModel>? dropdownItemList1, List<SelectionPopupModel>? dropdownItemList2, List<SelectionPopupModel>? dropdownItemList3, List<SelectionPopupModel>? dropdownItemList4, }) { return HelpContactUsModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
dropdownItemList1 : dropdownItemList1 ?? this.dropdownItemList1,
dropdownItemList2 : dropdownItemList2 ?? this.dropdownItemList2,
dropdownItemList3 : dropdownItemList3 ?? this.dropdownItemList3,
dropdownItemList4 : dropdownItemList4 ?? this.dropdownItemList4,
); } 
@override List<Object?> get props => [dropdownItemList,dropdownItemList1,dropdownItemList2,dropdownItemList3,dropdownItemList4];
 }
