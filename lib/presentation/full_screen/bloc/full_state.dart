// ignore_for_file: must_be_immutable

part of 'full_bloc.dart';

/// Represents the state of Full in the application.
class FullState extends Equatable {
  FullState({this.fullModelObj});

  FullModel? fullModelObj;

  @override
  List<Object?> get props => [
        fullModelObj,
      ];
  FullState copyWith({FullModel? fullModelObj}) {
    return FullState(
      fullModelObj: fullModelObj ?? this.fullModelObj,
    );
  }
}
