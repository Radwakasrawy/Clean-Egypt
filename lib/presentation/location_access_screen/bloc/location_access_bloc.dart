import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:clean_egypt/presentation/location_access_screen/models/location_access_model.dart';part 'location_access_event.dart';part 'location_access_state.dart';/// A bloc that manages the state of a LocationAccess according to the event that is dispatched to it.
class LocationAccessBloc extends Bloc<LocationAccessEvent, LocationAccessState> {LocationAccessBloc(LocationAccessState initialState) : super(initialState) { on<LocationAccessInitialEvent>(_onInitialize); }

_onInitialize(LocationAccessInitialEvent event, Emitter<LocationAccessState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); } 
 }
