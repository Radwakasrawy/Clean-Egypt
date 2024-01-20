// ignore_for_file: must_be_immutable

part of 'add_manually_location_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddManuallyLocation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddManuallyLocationEvent extends Equatable {}

/// Event that is dispatched when the AddManuallyLocation widget is first created.
class AddManuallyLocationInitialEvent extends AddManuallyLocationEvent {
  @override
  List<Object?> get props => [];
}
