// ignore_for_file: must_be_immutable

part of 'scanner_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Scanner widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ScannerEvent extends Equatable {}

/// Event that is dispatched when the Scanner widget is first created.
class ScannerInitialEvent extends ScannerEvent {
  @override
  List<Object?> get props => [];
}
