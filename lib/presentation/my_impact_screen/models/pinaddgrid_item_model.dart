import '../../../core/app_export.dart';/// This class is used in the [pinaddgrid_item_widget] screen.
class PinaddgridItemModel {PinaddgridItemModel({this.cartImage, this.textSeven, this.textPinAdd, this.id, }) { cartImage = cartImage  ?? ImageConstant.imgCartBlueGray300;textSeven = textSeven  ?? "7";textPinAdd = textPinAdd  ?? "Pin Add";id = id  ?? ""; }

String? cartImage;

String? textSeven;

String? textPinAdd;

String? id;

 }
