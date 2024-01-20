// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'welcomemessage_item_model.dart';/// This class defines the variables used in the [coupon_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CouponModel extends Equatable {CouponModel({this.welcomemessageItemList = const []}) {  }

List<WelcomemessageItemModel> welcomemessageItemList;

CouponModel copyWith({List<WelcomemessageItemModel>? welcomemessageItemList}) { return CouponModel(
welcomemessageItemList : welcomemessageItemList ?? this.welcomemessageItemList,
); } 
@override List<Object?> get props => [welcomemessageItemList];
 }
