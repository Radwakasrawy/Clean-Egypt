import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/alllist_item_model.dart';
import 'package:clean_egypt/presentation/help_faq_page/models/help_faq_model.dart';
part 'help_faq_event.dart';
part 'help_faq_state.dart';

/// A bloc that manages the state of a HelpFaq according to the event that is dispatched to it.
class HelpFaqBloc extends Bloc<HelpFaqEvent, HelpFaqState> {
  HelpFaqBloc(HelpFaqState initialState) : super(initialState) {
    on<HelpFaqInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HelpFaqInitialEvent event,
    Emitter<HelpFaqState> emit,
  ) async {
    emit(state.copyWith(
        helpFaqModelObj: state.helpFaqModelObj?.copyWith(
      alllistItemList: fillAlllistItemList(),
    )));
  }

  List<AlllistItemModel> fillAlllistItemList() {
    return [
      AlllistItemModel(group: "All"),
      AlllistItemModel(group: "Servises"),
      AlllistItemModel(group: "General"),
      AlllistItemModel(group: "Account")
    ];
  }
}
