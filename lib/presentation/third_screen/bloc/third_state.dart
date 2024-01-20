// ignore_for_file: must_be_immutable

part of 'third_bloc.dart';

/// Represents the state of Third in the application.
class ThirdState extends Equatable {
  ThirdState({this.thirdModelObj});

  ThirdModel? thirdModelObj;

  @override
  List<Object?> get props => [
        thirdModelObj,
      ];
  ThirdState copyWith({ThirdModel? thirdModelObj}) {
    return ThirdState(
      thirdModelObj: thirdModelObj ?? this.thirdModelObj,
    );
  }
}
