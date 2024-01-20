// ignore_for_file: must_be_immutable

part of 'detail_bloc.dart';

/// Represents the state of Detail in the application.
class DetailState extends Equatable {
  DetailState({
    this.date = false,
    this.detailModelObj,
  });

  DetailModel? detailModelObj;

  bool date;

  @override
  List<Object?> get props => [
        date,
        detailModelObj,
      ];
  DetailState copyWith({
    bool? date,
    DetailModel? detailModelObj,
  }) {
    return DetailState(
      date: date ?? this.date,
      detailModelObj: detailModelObj ?? this.detailModelObj,
    );
  }
}
