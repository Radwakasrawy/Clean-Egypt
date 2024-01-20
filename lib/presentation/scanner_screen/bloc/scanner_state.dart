// ignore_for_file: must_be_immutable

part of 'scanner_bloc.dart';

/// Represents the state of Scanner in the application.
class ScannerState extends Equatable {
  ScannerState({this.scannerModelObj});

  ScannerModel? scannerModelObj;

  @override
  List<Object?> get props => [
        scannerModelObj,
      ];
  ScannerState copyWith({ScannerModel? scannerModelObj}) {
    return ScannerState(
      scannerModelObj: scannerModelObj ?? this.scannerModelObj,
    );
  }
}
