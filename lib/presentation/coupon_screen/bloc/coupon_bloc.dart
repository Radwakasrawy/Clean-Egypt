import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/welcomemessage_item_model.dart';import 'package:clean_egypt/presentation/coupon_screen/models/coupon_model.dart';part 'coupon_event.dart';part 'coupon_state.dart';/// A bloc that manages the state of a Coupon according to the event that is dispatched to it.
class CouponBloc extends Bloc<CouponEvent, CouponState> {CouponBloc(CouponState initialState) : super(initialState) { on<CouponInitialEvent>(_onInitialize); }

_onInitialize(CouponInitialEvent event, Emitter<CouponState> emit, ) async  { emit(state.copyWith(couponModelObj: state.couponModelObj?.copyWith(welcomemessageItemList: fillWelcomemessageItemList()))); } 
List<WelcomemessageItemModel> fillWelcomemessageItemList() { return [WelcomemessageItemModel(welcomeText: "WELCOME", unlockText: "Add items worth 2 more to unlock", discountText: "Get 50% OFF"), WelcomemessageItemModel(welcomeText: "CASHBACK", unlockText: "Add items worth 2 more to unlock", discountText: "Up to 5 cashback"), WelcomemessageItemModel(welcomeText: "FESTCOST", unlockText: "Add items worth 2 more to unlock", discountText: "Get 50% OFF for Combo"), WelcomemessageItemModel(welcomeText: "CASHBACK", unlockText: "Add items worth 2 more to unlock", discountText: "Up to 12.00 cashback")]; } 
 }
