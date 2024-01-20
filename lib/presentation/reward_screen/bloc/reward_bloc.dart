import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:clean_egypt/presentation/reward_screen/models/reward_model.dart';part 'reward_event.dart';part 'reward_state.dart';/// A bloc that manages the state of a Reward according to the event that is dispatched to it.
class RewardBloc extends Bloc<RewardEvent, RewardState> {RewardBloc(RewardState initialState) : super(initialState) { on<RewardInitialEvent>(_onInitialize); }

_onInitialize(RewardInitialEvent event, Emitter<RewardState> emit, ) async  {  } 
 }
