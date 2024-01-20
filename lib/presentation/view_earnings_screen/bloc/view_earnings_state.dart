// ignore_for_file: must_be_immutable

part of 'view_earnings_bloc.dart';

/// Represents the state of ViewEarnings in the application.
class ViewEarningsState extends Equatable {
  ViewEarningsState({this.viewEarningsModelObj});

  ViewEarningsModel? viewEarningsModelObj;

  @override
  List<Object?> get props => [
        viewEarningsModelObj,
      ];
  ViewEarningsState copyWith({ViewEarningsModel? viewEarningsModelObj}) {
    return ViewEarningsState(
      viewEarningsModelObj: viewEarningsModelObj ?? this.viewEarningsModelObj,
    );
  }
}
