import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:clean_egypt/presentation/delete_account_screen/models/delete_account_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'delete_account_event.dart';part 'delete_account_state.dart';/// A bloc that manages the state of a DeleteAccount according to the event that is dispatched to it.
class DeleteAccountBloc extends Bloc<DeleteAccountEvent, DeleteAccountState> with  CodeAutoFill {DeleteAccountBloc(DeleteAccountState initialState) : super(initialState) { on<DeleteAccountInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<DeleteAccountState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_onInitialize(DeleteAccountInitialEvent event, Emitter<DeleteAccountState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode(); } 
 }
