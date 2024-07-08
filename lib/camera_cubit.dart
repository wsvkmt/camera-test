import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:camera/camera.dart';

part 'camera_state.dart';

class CameraCubit extends Cubit<CameraState> {
  CameraController? _controller;

  CameraCubit() : super(CameraInitial());

  Future<void> initializeCamera() async {
    try {
      final cameras = await availableCameras();
      if (cameras.isEmpty) {
        emit(CameraError('No cameras available.'));
        return;
      }

      _controller = CameraController(cameras[0], ResolutionPreset.max);
      await _controller!.initialize();
      emit(CameraReady(_controller!));
    } catch (e) {
      emit(CameraError('Failed to initialize camera: $e'));
    }
  }

  Future<void> takePicture() async {
    if (_controller == null || !_controller!.value.isInitialized) {
      emit(CameraError('Camera is not initialized'));
      return;
    }

    try {
      emit(CameraCapturing());
      final XFile image = await _controller!.takePicture();
      emit(CameraCaptureComplete(image));
    } catch (e) {
      emit(CameraError('Failed to take picture: $e'));
    }
  }

  Future<void> startVideoRecording() async {
    if (_controller == null || !_controller!.value.isInitialized) {
      emit(CameraError('Camera is not initialized'));
      return;
    }

    try {
      await _controller!.startVideoRecording();
      emit(CameraRecording(_controller!));  // Pass the controller here
    } catch (e) {
      emit(CameraError('Failed to start video recording: $e'));
    }
  }

  Future<void> stopVideoRecording() async {
    if (_controller == null || !_controller!.value.isRecordingVideo) {
      emit(CameraError('No active video recording'));
      return;
    }

    try {
      final XFile video = await _controller!.stopVideoRecording();
      emit(CameraRecordingComplete(video));
    } catch (e) {
      emit(CameraError('Failed to stop video recording: $e'));
    }
  }

  @override
  Future<void> close() {
    _controller?.dispose();
    return super.close();
  }
}