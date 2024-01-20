// ignore_for_file: must_be_immutable

part of 'complain_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Complain widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ComplainEvent extends Equatable {}

/// Event that is dispatched when the Complain widget is first created.
class ComplainInitialEvent extends ComplainEvent {
  @override
  List<Object?> get props => [];
}
