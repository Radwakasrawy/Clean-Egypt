import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:clean_egypt/presentation/remove_event_screen/models/remove_event_model.dart';part 'remove_event_event.dart';part 'remove_event_state.dart';/// A bloc that manages the state of a RemoveEvent according to the event that is dispatched to it.
class RemoveEventBloc extends Bloc<RemoveEventEvent, RemoveEventState> {RemoveEventBloc(RemoveEventState initialState) : super(initialState) { on<RemoveEventInitialEvent>(_onInitialize); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changeCheckBox(ChangeCheckBoxEvent event, Emitter<RemoveEventState> emit, ) { emit(state.copyWith(date: event.value)); } 
_onInitialize(RemoveEventInitialEvent event, Emitter<RemoveEventState> emit, ) async  { emit(state.copyWith(date: false)); } 
 }
