import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:clean_egypt/presentation/refer_earn_screen/models/refer_earn_model.dart';part 'refer_earn_event.dart';part 'refer_earn_state.dart';/// A bloc that manages the state of a ReferEarn according to the event that is dispatched to it.
class ReferEarnBloc extends Bloc<ReferEarnEvent, ReferEarnState> {ReferEarnBloc(ReferEarnState initialState) : super(initialState) { on<ReferEarnInitialEvent>(_onInitialize); }

_onInitialize(ReferEarnInitialEvent event, Emitter<ReferEarnState> emit, ) async  {  } 
 }
