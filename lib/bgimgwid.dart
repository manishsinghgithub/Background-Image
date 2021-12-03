import 'package:flutter/material.dart';

class BackImgWidget extends StatelessWidget {
  final Widget child;
  final ImageProvider image;
  BackImgWidget({required this.child, required this.image});

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          buildBackground(),
          child,
        ],
      );
  Widget buildBackground() => ShaderMask(
        shaderCallback: (bounds) => LinearGradient(
          colors: [Colors.black38, Colors.black87],
          begin: Alignment.center,
          end: Alignment.bottomCenter,
        ).createShader(bounds),
        blendMode: BlendMode.darken,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            ),
          ),
        ),
      );
}
