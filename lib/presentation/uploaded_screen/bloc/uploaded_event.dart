// ignore_for_file: must_be_immutable

part of 'uploaded_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Uploaded widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UploadedEvent extends Equatable {}

/// Event that is dispatched when the Uploaded widget is first created.
class UploadedInitialEvent extends UploadedEvent {
  @override
  List<Object?> get props => [];
}
