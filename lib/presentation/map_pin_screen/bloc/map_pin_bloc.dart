import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:clean_egypt/presentation/map_pin_screen/models/map_pin_model.dart';part 'map_pin_event.dart';part 'map_pin_state.dart';/// A bloc that manages the state of a MapPin according to the event that is dispatched to it.
class MapPinBloc extends Bloc<MapPinEvent, MapPinState> {MapPinBloc(MapPinState initialState) : super(initialState) { on<MapPinInitialEvent>(_onInitialize); }

_onInitialize(MapPinInitialEvent event, Emitter<MapPinState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); } 
 }
