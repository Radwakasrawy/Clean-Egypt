import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile1_item_model.dart';
import 'package:clean_egypt/presentation/rank_screen/models/rank_model.dart';
part 'rank_event.dart';
part 'rank_state.dart';

/// A bloc that manages the state of a Rank according to the event that is dispatched to it.
class RankBloc extends Bloc<RankEvent, RankState> {
  RankBloc(RankState initialState) : super(initialState) {
    on<RankInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
  }

  _onInitialize(
    RankInitialEvent event,
    Emitter<RankState> emit,
  ) async {
    emit(state.copyWith(
        rankModelObj: state.rankModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      dropdownItemList1: fillDropdownItemList1(),
      userprofile1ItemList: fillUserprofile1ItemList(),
    )));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<RankState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<RankState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue1: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<Userprofile1ItemModel> fillUserprofile1ItemList() {
    return [
      Userprofile1ItemModel(
          four: "4",
          userImage: ImageConstant.imgRectangle39x39,
          loganNash: "Logan Nash",
          pointCounter: "27204 Point"),
      Userprofile1ItemModel(
          four: "5",
          userImage: ImageConstant.imgRectangle1,
          loganNash: "Louisa Miles",
          pointCounter: "26496 Point"),
      Userprofile1ItemModel(
          four: "6",
          userImage: ImageConstant.imgRectangle2,
          loganNash: "Edward Fold",
          pointCounter: "25837 Point"),
      Userprofile1ItemModel(
          four: "7",
          userImage: ImageConstant.imgRectangle3,
          loganNash: "Katherine Cole",
          pointCounter: "24118 Point"),
      Userprofile1ItemModel(
          four: "8",
          userImage: ImageConstant.imgRectangle4,
          loganNash: "Bily Blue",
          pointCounter: "23644 Point"),
      Userprofile1ItemModel(
          four: "9",
          userImage: ImageConstant.imgRectangle5,
          loganNash: "Emma Stone ",
          pointCounter: "22151 Point"),
      Userprofile1ItemModel(
          four: "10",
          userImage: ImageConstant.imgRectangle6,
          loganNash: "Kevin Richard",
          pointCounter: "21014 Point")
    ];
  }
}
