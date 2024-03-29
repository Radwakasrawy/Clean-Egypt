// ignore_for_file: must_be_immutable

part of 'update_profile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UpdateProfile widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UpdateProfileEvent extends Equatable {}

/// Event that is dispatched when the UpdateProfile widget is first created.
class UpdateProfileInitialEvent extends UpdateProfileEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends UpdateProfileEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
