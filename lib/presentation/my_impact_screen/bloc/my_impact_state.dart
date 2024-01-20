// ignore_for_file: must_be_immutable

part of 'my_impact_bloc.dart';

/// Represents the state of MyImpact in the application.
class MyImpactState extends Equatable {
  MyImpactState({this.myImpactModelObj});

  MyImpactModel? myImpactModelObj;

  @override
  List<Object?> get props => [
        myImpactModelObj,
      ];
  MyImpactState copyWith({MyImpactModel? myImpactModelObj}) {
    return MyImpactState(
      myImpactModelObj: myImpactModelObj ?? this.myImpactModelObj,
    );
  }
}
