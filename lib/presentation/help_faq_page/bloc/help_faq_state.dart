// ignore_for_file: must_be_immutable

part of 'help_faq_bloc.dart';

/// Represents the state of HelpFaq in the application.
class HelpFaqState extends Equatable {
  HelpFaqState({this.helpFaqModelObj});

  HelpFaqModel? helpFaqModelObj;

  @override
  List<Object?> get props => [
        helpFaqModelObj,
      ];
  HelpFaqState copyWith({HelpFaqModel? helpFaqModelObj}) {
    return HelpFaqState(
      helpFaqModelObj: helpFaqModelObj ?? this.helpFaqModelObj,
    );
  }
}
