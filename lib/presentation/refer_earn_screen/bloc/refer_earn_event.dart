// ignore_for_file: must_be_immutable

part of 'refer_earn_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReferEarn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReferEarnEvent extends Equatable {}

/// Event that is dispatched when the ReferEarn widget is first created.
class ReferEarnInitialEvent extends ReferEarnEvent {
  @override
  List<Object?> get props => [];
}
