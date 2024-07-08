part of 'camera_cubit.dart';

@immutable
sealed class CameraState {}

final class CameraInitial extends CameraState {}

final class CameraReady extends CameraState {
  final CameraController controller;

  CameraReady(this.controller);
}

final class CameraCapturing extends CameraState {}

final class CameraRecording extends CameraState {
  final CameraController controller;

  CameraRecording(this.controller);
}
final class CameraCaptureComplete extends CameraState {
  final XFile image;

  CameraCaptureComplete(this.image);
}

final class CameraRecordingComplete extends CameraState {
  final XFile video;

  CameraRecordingComplete(this.video);
}

final class CameraError extends CameraState {
  final String message;

  CameraError(this.message);
}