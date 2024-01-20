import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:clean_egypt/presentation/forgot_password_successful_screen/models/forgot_password_successful_model.dart';part 'forgot_password_successful_event.dart';part 'forgot_password_successful_state.dart';/// A bloc that manages the state of a ForgotPasswordSuccessful according to the event that is dispatched to it.
class ForgotPasswordSuccessfulBloc extends Bloc<ForgotPasswordSuccessfulEvent, ForgotPasswordSuccessfulState> {ForgotPasswordSuccessfulBloc(ForgotPasswordSuccessfulState initialState) : super(initialState) { on<ForgotPasswordSuccessfulInitialEvent>(_onInitialize); }

_onInitialize(ForgotPasswordSuccessfulInitialEvent event, Emitter<ForgotPasswordSuccessfulState> emit, ) async  {  } 
 }
