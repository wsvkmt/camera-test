import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:io';
import 'camera_bloc.dart';


class CameraPage extends StatelessWidget {
  const CameraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CameraBloc()..add(const CameraEvent.initialize()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Camera')),
        body: BlocConsumer<CameraBloc, CameraState>(
          listener: (context, state) {
            if (state.errorMessage != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errorMessage!)),
              );
            }
          },
          builder: (context, state) {
            if (!state.isInitialized) {
              return const Center(child: CircularProgressIndicator());
            }

            return Column(
              children: [
                Expanded(
                  child: CameraPreview(state.controller!),
                ),
                ElevatedButton(
                  onPressed: state.isTakingPicture
                      ? null
                      : () => context.read<CameraBloc>().add(const CameraEvent.takePicture()),
                  child: const Text('Take Picture'),
                ),
                if (state.imageFile != null)
                  Expanded(
                    child: Image.file(File(state.imageFile!.path)),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}