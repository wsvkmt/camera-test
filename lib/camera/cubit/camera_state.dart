part of 'camera_bloc.dart';

@freezed
class CameraState with _$CameraState {
  const factory CameraState({
    CameraController? controller,
    @Default(false) bool isInitialized,
    @Default(false) bool isTakingPicture,
    XFile? imageFile,
    String? errorMessage,
  }) = _CameraState;
}