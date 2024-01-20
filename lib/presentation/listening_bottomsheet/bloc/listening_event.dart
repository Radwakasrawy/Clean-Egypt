// ignore_for_file: must_be_immutable

part of 'listening_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Listening widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ListeningEvent extends Equatable {}

/// Event that is dispatched when the Listening widget is first created.
class ListeningInitialEvent extends ListeningEvent {
  @override
  List<Object?> get props => [];
}
