import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:clean_egypt/presentation/first_screen/models/first_model.dart';part 'first_event.dart';part 'first_state.dart';/// A bloc that manages the state of a First according to the event that is dispatched to it.
class FirstBloc extends Bloc<FirstEvent, FirstState> {FirstBloc(FirstState initialState) : super(initialState) { on<FirstInitialEvent>(_onInitialize); }

_onInitialize(FirstInitialEvent event, Emitter<FirstState> emit, ) async  {  } 
 }
