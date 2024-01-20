import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:clean_egypt/presentation/complain_screen/models/complain_model.dart';
part 'complain_event.dart';
part 'complain_state.dart';

/// A bloc that manages the state of a Complain according to the event that is dispatched to it.
class ComplainBloc extends Bloc<ComplainEvent, ComplainState> {
  ComplainBloc(ComplainState initialState) : super(initialState) {
    on<ComplainInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ComplainInitialEvent event,
    Emitter<ComplainState> emit,
  ) async {
    emit(state.copyWith(
      addressController: TextEditingController(),
    ));
  }
}
