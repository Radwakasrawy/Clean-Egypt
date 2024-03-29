// ignore_for_file: must_be_immutable

part of 'sceond_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sceond widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SceondEvent extends Equatable {}

/// Event that is dispatched when the Sceond widget is first created.
class SceondInitialEvent extends SceondEvent {
  @override
  List<Object?> get props => [];
}
