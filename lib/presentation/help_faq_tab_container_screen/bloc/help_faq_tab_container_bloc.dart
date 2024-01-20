import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:clean_egypt/presentation/help_faq_tab_container_screen/models/help_faq_tab_container_model.dart';part 'help_faq_tab_container_event.dart';part 'help_faq_tab_container_state.dart';/// A bloc that manages the state of a HelpFaqTabContainer according to the event that is dispatched to it.
class HelpFaqTabContainerBloc extends Bloc<HelpFaqTabContainerEvent, HelpFaqTabContainerState> {HelpFaqTabContainerBloc(HelpFaqTabContainerState initialState) : super(initialState) { on<HelpFaqTabContainerInitialEvent>(_onInitialize); }

_onInitialize(HelpFaqTabContainerInitialEvent event, Emitter<HelpFaqTabContainerState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); } 
 }
