import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:clean_egypt/presentation/listening_bottomsheet/models/listening_model.dart';part 'listening_event.dart';part 'listening_state.dart';/// A bloc that manages the state of a Listening according to the event that is dispatched to it.
class ListeningBloc extends Bloc<ListeningEvent, ListeningState> {ListeningBloc(ListeningState initialState) : super(initialState) { on<ListeningInitialEvent>(_onInitialize); }

_onInitialize(ListeningInitialEvent event, Emitter<ListeningState> emit, ) async  {  } 
 }
