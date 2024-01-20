// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:clean_egypt/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'userprofile1_item_model.dart';/// This class defines the variables used in the [rank_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RankModel extends Equatable {RankModel({this.dropdownItemList = const [], this.dropdownItemList1 = const [], this.userprofile1ItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<SelectionPopupModel> dropdownItemList1;

List<Userprofile1ItemModel> userprofile1ItemList;

RankModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<SelectionPopupModel>? dropdownItemList1, List<Userprofile1ItemModel>? userprofile1ItemList, }) { return RankModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
dropdownItemList1 : dropdownItemList1 ?? this.dropdownItemList1,
userprofile1ItemList : userprofile1ItemList ?? this.userprofile1ItemList,
); } 
@override List<Object?> get props => [dropdownItemList,dropdownItemList1,userprofile1ItemList];
 }
