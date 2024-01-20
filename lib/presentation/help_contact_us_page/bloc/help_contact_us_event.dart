// ignore_for_file: must_be_immutable

part of 'help_contact_us_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HelpContactUs widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HelpContactUsEvent extends Equatable {}

/// Event that is dispatched when the HelpContactUs widget is first created.
class HelpContactUsInitialEvent extends HelpContactUsEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends HelpContactUsEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends HelpContactUsEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown2Event extends HelpContactUsEvent {
  ChangeDropDown2Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown3Event extends HelpContactUsEvent {
  ChangeDropDown3Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown4Event extends HelpContactUsEvent {
  ChangeDropDown4Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
