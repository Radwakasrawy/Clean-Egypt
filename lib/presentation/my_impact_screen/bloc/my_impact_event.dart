// ignore_for_file: must_be_immutable

part of 'my_impact_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyImpact widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyImpactEvent extends Equatable {}

/// Event that is dispatched when the MyImpact widget is first created.
class MyImpactInitialEvent extends MyImpactEvent {
  @override
  List<Object?> get props => [];
}
