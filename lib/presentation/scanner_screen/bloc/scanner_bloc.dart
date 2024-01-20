import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:clean_egypt/presentation/scanner_screen/models/scanner_model.dart';
part 'scanner_event.dart';
part 'scanner_state.dart';

/// A bloc that manages the state of a Scanner according to the event that is dispatched to it.
class ScannerBloc extends Bloc<ScannerEvent, ScannerState> {
  ScannerBloc(ScannerState initialState) : super(initialState) {
    on<ScannerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScannerInitialEvent event,
    Emitter<ScannerState> emit,
  ) async {}
}
