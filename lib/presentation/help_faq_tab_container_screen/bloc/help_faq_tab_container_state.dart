// ignore_for_file: must_be_immutable

part of 'help_faq_tab_container_bloc.dart';

/// Represents the state of HelpFaqTabContainer in the application.
class HelpFaqTabContainerState extends Equatable {
  HelpFaqTabContainerState({
    this.searchController,
    this.helpFaqTabContainerModelObj,
  });

  TextEditingController? searchController;

  HelpFaqTabContainerModel? helpFaqTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        helpFaqTabContainerModelObj,
      ];
  HelpFaqTabContainerState copyWith({
    TextEditingController? searchController,
    HelpFaqTabContainerModel? helpFaqTabContainerModelObj,
  }) {
    return HelpFaqTabContainerState(
      searchController: searchController ?? this.searchController,
      helpFaqTabContainerModelObj:
          helpFaqTabContainerModelObj ?? this.helpFaqTabContainerModelObj,
    );
  }
}
