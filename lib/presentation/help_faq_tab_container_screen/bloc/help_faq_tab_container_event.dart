// ignore_for_file: must_be_immutable

part of 'help_faq_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HelpFaqTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HelpFaqTabContainerEvent extends Equatable {}

/// Event that is dispatched when the HelpFaqTabContainer widget is first created.
class HelpFaqTabContainerInitialEvent extends HelpFaqTabContainerEvent {
  @override
  List<Object?> get props => [];
}
