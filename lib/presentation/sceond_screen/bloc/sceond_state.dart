// ignore_for_file: must_be_immutable

part of 'sceond_bloc.dart';

/// Represents the state of Sceond in the application.
class SceondState extends Equatable {
  SceondState({this.sceondModelObj});

  SceondModel? sceondModelObj;

  @override
  List<Object?> get props => [
        sceondModelObj,
      ];
  SceondState copyWith({SceondModel? sceondModelObj}) {
    return SceondState(
      sceondModelObj: sceondModelObj ?? this.sceondModelObj,
    );
  }
}
