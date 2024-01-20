// ignore_for_file: must_be_immutable

part of 'first_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///First widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FirstEvent extends Equatable {}

/// Event that is dispatched when the First widget is first created.
class FirstInitialEvent extends FirstEvent {
  @override
  List<Object?> get props => [];
}
