import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:clean_egypt/presentation/verfiy_screen/models/verfiy_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'verfiy_event.dart';part 'verfiy_state.dart';/// A bloc that manages the state of a Verfiy according to the event that is dispatched to it.
class VerfiyBloc extends Bloc<VerfiyEvent, VerfiyState> with  CodeAutoFill {VerfiyBloc(VerfiyState initialState) : super(initialState) { on<VerfiyInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<VerfiyState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_onInitialize(VerfiyInitialEvent event, Emitter<VerfiyState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode(); } 
 }
