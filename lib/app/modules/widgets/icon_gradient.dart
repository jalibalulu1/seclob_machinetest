import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seclob/app/modules/home/controllers/home_controller.dart';

 class RadiantGradientMask extends StatelessWidget {
  RadiantGradientMask({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => RadialGradient(
        center: Alignment.center,
        radius: 0.5,
        colors: [ Color.fromARGB(255, 41, 62, 65),
                  Color.fromARGB(255, 134, 193, 195)],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}