import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // Initialisation du contrôleur de la caméra
    _controller = CameraController(
      // Sélectionnez la caméra arrière par défaut
      const CameraDescription(
        sensorOrientation: 0,
        name: '0',
        lensDirection: CameraLensDirection.back,
      ),
      ResolutionPreset.medium,
    );

    // Initialisation du contrôleur de la caméra future
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Libérez les ressources de la caméra lorsque le widget est détruit
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // Si la connexion est terminée, affichez le flux de la caméra
            return CameraPreview(_controller);
          } else {
            // Sinon, affichez un indicateur de chargement
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
