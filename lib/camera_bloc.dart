import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:camera/camera.dart';

part 'camera_event.dart';
part 'camera_state.dart';
part 'camera_bloc.freezed.dart';

class CameraBloc extends Bloc<CameraEvent, CameraState> {
  CameraBloc() : super(const CameraState()) {
    on<Initialize>(_onInitialize);
    on<TakePicture>(_onTakePicture);
  }

  void _onInitialize(Initialize event, Emitter<CameraState> emit) async {
    final cameras = await availableCameras();
    if (cameras.isEmpty) {
      emit(state.copyWith(errorMessage: 'No cameras available.'));
      return;
    }

    final controller = CameraController(cameras[0], ResolutionPreset.max);
    await controller.initialize();

    emit(state.copyWith(
      controller: controller,
      isInitialized: true,
      errorMessage: null,
    ));
  }

  void _onTakePicture(TakePicture event, Emitter<CameraState> emit) async {
    if (state.controller == null || !state.isInitialized) {
      emit(state.copyWith(errorMessage: 'Error: select a camera first.'));
      return;
    }

    if (state.isTakingPicture) {
      return; // A capture is already pending, do nothing.
    }

    try {
      emit(state.copyWith(isTakingPicture: true));
      final XFile file = await state.controller!.takePicture();
      emit(state.copyWith(
        imageFile: file,
        isTakingPicture: false,
        errorMessage: null,
      ));
    } on CameraException catch (e) {
      emit(state.copyWith(
        isTakingPicture: false,
        errorMessage: 'Error occurred while taking picture: ${e.description}',
      ));
    }
  }
}