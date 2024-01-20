import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:clean_egypt/presentation/full_screen/models/full_model.dart';
part 'full_event.dart';
part 'full_state.dart';

/// A bloc that manages the state of a Full according to the event that is dispatched to it.
class FullBloc extends Bloc<FullEvent, FullState> {
  FullBloc(FullState initialState) : super(initialState) {
    on<FullInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FullInitialEvent event,
    Emitter<FullState> emit,
  ) async {}
}
