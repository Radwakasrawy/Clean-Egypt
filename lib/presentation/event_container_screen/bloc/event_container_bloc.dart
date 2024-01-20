import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:clean_egypt/presentation/event_container_screen/models/event_container_model.dart';part 'event_container_event.dart';part 'event_container_state.dart';/// A bloc that manages the state of a EventContainer according to the event that is dispatched to it.
class EventContainerBloc extends Bloc<EventContainerEvent, EventContainerState> {EventContainerBloc(EventContainerState initialState) : super(initialState) { on<EventContainerInitialEvent>(_onInitialize); }

_onInitialize(EventContainerInitialEvent event, Emitter<EventContainerState> emit, ) async  {  } 
 }
