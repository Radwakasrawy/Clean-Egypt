// ignore_for_file: must_be_immutable

part of 'uploaded_bloc.dart';

/// Represents the state of Uploaded in the application.
class UploadedState extends Equatable {
  UploadedState({this.uploadedModelObj});

  UploadedModel? uploadedModelObj;

  @override
  List<Object?> get props => [
        uploadedModelObj,
      ];
  UploadedState copyWith({UploadedModel? uploadedModelObj}) {
    return UploadedState(
      uploadedModelObj: uploadedModelObj ?? this.uploadedModelObj,
    );
  }
}
