// ignore_for_file: must_be_immutable

part of 'first_bloc.dart';

/// Represents the state of First in the application.
class FirstState extends Equatable {
  FirstState({this.firstModelObj});

  FirstModel? firstModelObj;

  @override
  List<Object?> get props => [
        firstModelObj,
      ];
  FirstState copyWith({FirstModel? firstModelObj}) {
    return FirstState(
      firstModelObj: firstModelObj ?? this.firstModelObj,
    );
  }
}
