// ignore_for_file: must_be_immutable

part of 'view_earnings_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ViewEarnings widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ViewEarningsEvent extends Equatable {}

/// Event that is dispatched when the ViewEarnings widget is first created.
class ViewEarningsInitialEvent extends ViewEarningsEvent {
  @override
  List<Object?> get props => [];
}
