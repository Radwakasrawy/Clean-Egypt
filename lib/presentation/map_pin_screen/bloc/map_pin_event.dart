// ignore_for_file: must_be_immutable

part of 'map_pin_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MapPin widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MapPinEvent extends Equatable {}

/// Event that is dispatched when the MapPin widget is first created.
class MapPinInitialEvent extends MapPinEvent {
  @override
  List<Object?> get props => [];
}
