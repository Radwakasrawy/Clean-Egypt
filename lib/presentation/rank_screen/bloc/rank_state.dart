// ignore_for_file: must_be_immutable

part of 'rank_bloc.dart';

/// Represents the state of Rank in the application.
class RankState extends Equatable {
  RankState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.rankModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  RankModel? rankModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        rankModelObj,
      ];
  RankState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    RankModel? rankModelObj,
  }) {
    return RankState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      rankModelObj: rankModelObj ?? this.rankModelObj,
    );
  }
}
