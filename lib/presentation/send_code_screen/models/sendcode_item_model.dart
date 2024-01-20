import '../../../core/app_export.dart';/// This class is used in the [sendcode_item_widget] screen.
class SendcodeItemModel {SendcodeItemModel({this.selectWhichContact, this.id, }) { selectWhichContact = selectWhichContact  ?? "Select Which contact details should we use to reset your password";id = id  ?? ""; }

String? selectWhichContact;

String? id;

 }
