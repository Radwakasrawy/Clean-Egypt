import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:clean_egypt/presentation/add_manually_location_screen/models/add_manually_location_model.dart';part 'add_manually_location_event.dart';part 'add_manually_location_state.dart';/// A bloc that manages the state of a AddManuallyLocation according to the event that is dispatched to it.
class AddManuallyLocationBloc extends Bloc<AddManuallyLocationEvent, AddManuallyLocationState> {AddManuallyLocationBloc(AddManuallyLocationState initialState) : super(initialState) { on<AddManuallyLocationInitialEvent>(_onInitialize); }

_onInitialize(AddManuallyLocationInitialEvent event, Emitter<AddManuallyLocationState> emit, ) async  {  } 
 }
