// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'alllist_item_model.dart';/// This class defines the variables used in the [help_faq_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HelpFaqModel extends Equatable {HelpFaqModel({this.alllistItemList = const []}) {  }

List<AlllistItemModel> alllistItemList;

HelpFaqModel copyWith({List<AlllistItemModel>? alllistItemList}) { return HelpFaqModel(
alllistItemList : alllistItemList ?? this.alllistItemList,
); } 
@override List<Object?> get props => [alllistItemList];
 }
