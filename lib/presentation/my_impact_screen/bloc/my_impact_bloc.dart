import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/pinaddgrid_item_model.dart';import 'package:clean_egypt/presentation/my_impact_screen/models/my_impact_model.dart';part 'my_impact_event.dart';part 'my_impact_state.dart';/// A bloc that manages the state of a MyImpact according to the event that is dispatched to it.
class MyImpactBloc extends Bloc<MyImpactEvent, MyImpactState> {MyImpactBloc(MyImpactState initialState) : super(initialState) { on<MyImpactInitialEvent>(_onInitialize); }

_onInitialize(MyImpactInitialEvent event, Emitter<MyImpactState> emit, ) async  { emit(state.copyWith(myImpactModelObj: state.myImpactModelObj?.copyWith(pinaddgridItemList: fillPinaddgridItemList()))); } 
List<PinaddgridItemModel> fillPinaddgridItemList() { return [PinaddgridItemModel(cartImage: ImageConstant.imgCartBlueGray300, textSeven: "7", textPinAdd: "Pin Add"), PinaddgridItemModel(cartImage: ImageConstant.imgUserBlueGray60003, textSeven: "21", textPinAdd: "Photo Add"), PinaddgridItemModel(cartImage: ImageConstant.imgHuman, textSeven: "6", textPinAdd: "People Shared With")]; } 
 }
