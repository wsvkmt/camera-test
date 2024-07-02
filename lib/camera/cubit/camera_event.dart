part of 'camera_bloc.dart';

@freezed
class CameraEvent with _$CameraEvent {
  const factory CameraEvent.initialize() = Initialize;
  const factory CameraEvent.takePicture() = TakePicture;
}