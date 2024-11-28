import 'package:flutter/material.dart';

class GradientWidget extends StatelessWidget {
  final List<Color> colors;
  final double intensity;
  final Alignment begin;
  final Alignment end;

  const GradientWidget({
    Key? key,
    required this.colors,
    required this.intensity,
    required this.begin,
    required this.end,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ensure the intensity is between 0.0 and 1.0
    double clampedIntensity = intensity.clamp(0.0, 1.0);

    // Calculate the opacity of the gradient colors based on intensity
    List<Color> adjustedColors = colors.map((color) {
      return color.withOpacity(clampedIntensity);
    }).toList();

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: adjustedColors,
        ),
      ),
    );
  }
}
