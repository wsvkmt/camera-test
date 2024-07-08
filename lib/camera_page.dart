import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:camera/camera.dart';
import 'dart:io';
import 'camera_cubit.dart';

class CameraPage extends StatelessWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CameraCubit()..initializeCamera(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Camera')),
        body: BlocConsumer<CameraCubit, CameraState>(
          listener: (context, state) {
            if (state is CameraError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message)),
              );
            }
          },
          builder: (context, state) {
            return switch (state) {
              CameraInitial() => const Center(child: CircularProgressIndicator()),
              CameraReady(controller: var controller) => _buildCameraUI(context, controller),
              CameraCapturing() => const Center(child: CircularProgressIndicator()),
              CameraRecording(controller: var controller) => _buildCameraUI(context, controller, isRecording: true),
              CameraCaptureComplete(image: var image) => _buildCaptureComplete(context, image),
              CameraRecordingComplete(video: var video) => _buildRecordingComplete(context, video),
              CameraError() => Center(child: Text('Error: ${(state).message}')),
            };
          },
        ),
      ),
    );
  }

  Widget _buildCameraUI(BuildContext context, CameraController controller, {bool isRecording = false}) {
    return Column(
      children: [
        Expanded(
          child: CameraPreview(controller),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => context.read<CameraCubit>().takePicture(),
                child: const Text('Take Picture'),
              ),
              ElevatedButton(
                onPressed: isRecording
                    ? () => context.read<CameraCubit>().stopVideoRecording()
                    : () => context.read<CameraCubit>().startVideoRecording(),
                child: Text(isRecording ? 'Stop Recording' : 'Start Recording'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCaptureComplete(BuildContext context, XFile image) {
    return Column(
      children: [
        Expanded(
          child: Image.file(File(image.path)),
        ),
        ElevatedButton(
          onPressed: () => context.read<CameraCubit>().initializeCamera(),
          child: const Text('Take Another Picture'),
        ),
      ],
    );
  }

  Widget _buildRecordingComplete(BuildContext context, XFile video) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Text('Video saved: ${video.path}'),
          ),
        ),
        ElevatedButton(
          onPressed: () => context.read<CameraCubit>().initializeCamera(),
          child: const Text('Record Another Video'),
        ),
      ],
    );
  }
}