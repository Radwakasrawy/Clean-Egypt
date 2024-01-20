// ignore_for_file: must_be_immutable

part of 'refer_earn_bloc.dart';

/// Represents the state of ReferEarn in the application.
class ReferEarnState extends Equatable {
  ReferEarnState({this.referEarnModelObj});

  ReferEarnModel? referEarnModelObj;

  @override
  List<Object?> get props => [
        referEarnModelObj,
      ];
  ReferEarnState copyWith({ReferEarnModel? referEarnModelObj}) {
    return ReferEarnState(
      referEarnModelObj: referEarnModelObj ?? this.referEarnModelObj,
    );
  }
}
