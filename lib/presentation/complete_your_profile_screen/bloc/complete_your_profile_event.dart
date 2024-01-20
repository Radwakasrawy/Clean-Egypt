// ignore_for_file: must_be_immutable

part of 'complete_your_profile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CompleteYourProfile widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CompleteYourProfileEvent extends Equatable {}

/// Event that is dispatched when the CompleteYourProfile widget is first created.
class CompleteYourProfileInitialEvent extends CompleteYourProfileEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends CompleteYourProfileEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDownEvent extends CompleteYourProfileEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
