// ignore_for_file: must_be_immutable

part of 'rank_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Rank widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RankEvent extends Equatable {}

/// Event that is dispatched when the Rank widget is first created.
class RankInitialEvent extends RankEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends RankEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends RankEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
