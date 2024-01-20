import '../../../core/app_export.dart';/// This class is used in the [welcomemessage_item_widget] screen.
class WelcomemessageItemModel {WelcomemessageItemModel({this.welcomeText, this.unlockText, this.discountText, this.id, }) { welcomeText = welcomeText  ?? "WELCOME";unlockText = unlockText  ?? "Add items worth 2 more to unlock";discountText = discountText  ?? "Get 50% OFF";id = id  ?? ""; }

String? welcomeText;

String? unlockText;

String? discountText;

String? id;

 }
