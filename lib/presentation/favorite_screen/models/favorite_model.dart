// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'eventlist_item_model.dart';import '../../../core/app_export.dart';import 'favoriteevents_item_model.dart';/// This class defines the variables used in the [favorite_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FavoriteModel extends Equatable {FavoriteModel({this.eventlistItemList = const [], this.favoriteeventsItemList = const [], }) {  }

List<EventlistItemModel> eventlistItemList;

List<FavoriteeventsItemModel> favoriteeventsItemList;

FavoriteModel copyWith({List<EventlistItemModel>? eventlistItemList, List<FavoriteeventsItemModel>? favoriteeventsItemList, }) { return FavoriteModel(
eventlistItemList : eventlistItemList ?? this.eventlistItemList,
favoriteeventsItemList : favoriteeventsItemList ?? this.favoriteeventsItemList,
); } 
@override List<Object?> get props => [eventlistItemList,favoriteeventsItemList];
 }
