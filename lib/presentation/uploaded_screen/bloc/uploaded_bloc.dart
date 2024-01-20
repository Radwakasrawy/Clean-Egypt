import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:clean_egypt/presentation/uploaded_screen/models/uploaded_model.dart';part 'uploaded_event.dart';part 'uploaded_state.dart';/// A bloc that manages the state of a Uploaded according to the event that is dispatched to it.
class UploadedBloc extends Bloc<UploadedEvent, UploadedState> {UploadedBloc(UploadedState initialState) : super(initialState) { on<UploadedInitialEvent>(_onInitialize); }

_onInitialize(UploadedInitialEvent event, Emitter<UploadedState> emit, ) async  {  } 
 }
