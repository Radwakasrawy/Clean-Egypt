import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/sendcode_item_model.dart';import 'package:clean_egypt/presentation/send_code_screen/models/send_code_model.dart';part 'send_code_event.dart';part 'send_code_state.dart';/// A bloc that manages the state of a SendCode according to the event that is dispatched to it.
class SendCodeBloc extends Bloc<SendCodeEvent, SendCodeState> {SendCodeBloc(SendCodeState initialState) : super(initialState) { on<SendCodeInitialEvent>(_onInitialize); }

_onInitialize(SendCodeInitialEvent event, Emitter<SendCodeState> emit, ) async  { emit(state.copyWith(sendCodeModelObj: state.sendCodeModelObj?.copyWith(sendcodeItemList: fillSendcodeItemList()))); } 
List<SendcodeItemModel> fillSendcodeItemList() { return [SendcodeItemModel(selectWhichContact: "Select Which contact details should we use to reset your password")]; } 
 }
