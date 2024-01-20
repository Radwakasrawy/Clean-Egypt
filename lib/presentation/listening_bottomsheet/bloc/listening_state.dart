// ignore_for_file: must_be_immutable

part of 'listening_bloc.dart';

/// Represents the state of Listening in the application.
class ListeningState extends Equatable {
  ListeningState({this.listeningModelObj});

  ListeningModel? listeningModelObj;

  @override
  List<Object?> get props => [
        listeningModelObj,
      ];
  ListeningState copyWith({ListeningModel? listeningModelObj}) {
    return ListeningState(
      listeningModelObj: listeningModelObj ?? this.listeningModelObj,
    );
  }
}
