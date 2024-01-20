// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile_item_model.dart';/// This class defines the variables used in the [view_earnings_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ViewEarningsModel extends Equatable {ViewEarningsModel({this.userprofileItemList = const []}) {  }

List<UserprofileItemModel> userprofileItemList;

ViewEarningsModel copyWith({List<UserprofileItemModel>? userprofileItemList}) { return ViewEarningsModel(
userprofileItemList : userprofileItemList ?? this.userprofileItemList,
); } 
@override List<Object?> get props => [userprofileItemList];
 }
