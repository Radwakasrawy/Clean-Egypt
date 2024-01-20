import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:clean_egypt/presentation/sceond_screen/models/sceond_model.dart';part 'sceond_event.dart';part 'sceond_state.dart';/// A bloc that manages the state of a Sceond according to the event that is dispatched to it.
class SceondBloc extends Bloc<SceondEvent, SceondState> {SceondBloc(SceondState initialState) : super(initialState) { on<SceondInitialEvent>(_onInitialize); }

_onInitialize(SceondInitialEvent event, Emitter<SceondState> emit, ) async  {  } 
 }
