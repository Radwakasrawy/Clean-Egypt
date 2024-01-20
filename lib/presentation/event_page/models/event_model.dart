// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'eventcardlist_item_model.dart';/// This class defines the variables used in the [event_page],
/// and is typically used to hold data that is passed between different parts of the application.
class EventModel extends Equatable {EventModel({this.eventcardlistItemList = const []}) {  }

List<EventcardlistItemModel> eventcardlistItemList;

EventModel copyWith({List<EventcardlistItemModel>? eventcardlistItemList}) { return EventModel(
eventcardlistItemList : eventcardlistItemList ?? this.eventcardlistItemList,
); } 
@override List<Object?> get props => [eventcardlistItemList];
 }
