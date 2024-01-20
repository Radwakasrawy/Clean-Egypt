// ignore_for_file: must_be_immutable

part of 'full_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Full widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FullEvent extends Equatable {}

/// Event that is dispatched when the Full widget is first created.
class FullInitialEvent extends FullEvent {
  @override
  List<Object?> get props => [];
}
