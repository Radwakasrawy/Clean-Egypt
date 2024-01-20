import '../../../core/app_export.dart';/// This class is used in the [eventcardlist_item_widget] screen.
class EventcardlistItemModel {EventcardlistItemModel({this.image, this.title, this.dateText, this.seeMoreText, this.progressText, this.spotsLeftText, this.id, }) { image = image  ?? ImageConstant.imgImage;title = title  ?? "Miami Beach Cleanup";dateText = dateText  ?? "February, 14th 2023";seeMoreText = seeMoreText  ?? "See Event Details";progressText = progressText  ?? "75%";spotsLeftText = spotsLeftText  ?? "25 spots left";id = id  ?? ""; }

String? image;

String? title;

String? dateText;

String? seeMoreText;

String? progressText;

String? spotsLeftText;

String? id;

 }
