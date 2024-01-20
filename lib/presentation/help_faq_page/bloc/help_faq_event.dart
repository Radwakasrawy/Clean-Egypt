// ignore_for_file: must_be_immutable

part of 'help_faq_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HelpFaq widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HelpFaqEvent extends Equatable {}

/// Event that is dispatched when the HelpFaq widget is first created.
class HelpFaqInitialEvent extends HelpFaqEvent {
  @override
  List<Object?> get props => [];
}
