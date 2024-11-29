import 'package:flutter/material.dart';

class GradientWidget extends StatelessWidget {
  final List<Color> colors;
  final double intensity;
  final Alignment begin;
  final Alignment end;
  final double height;
  final double width;
  final double blurRadius; // Blur effect
  final double illumination; // Glow effect intensity

  const GradientWidget({
    super.key,
    required this.colors,
    required this.intensity,
    required this.begin,
    required this.end,
    required this.height,
    required this.width,
    this.blurRadius = 0.0, // Default no blur
    this.illumination = 0.0, // Default no glow
  });

  @override
  Widget build(BuildContext context) {
    // Ensure the intensity is between 0.0 and 1.0
    double clampedIntensity = intensity.clamp(0.0, 1.0);

    // Calculate the opacity of the gradient colors based on intensity
    List<Color> adjustedColors = colors.map((color) {
      return color.withOpacity(clampedIntensity);
    }).toList();

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: adjustedColors,
        ),
        // Add glow and blur effects
        boxShadow: illumination > 0
            ? [
                BoxShadow(
                  blurStyle: BlurStyle.normal,
                  color: adjustedColors.first.withOpacity(illumination),
                  blurRadius: blurRadius,
                  spreadRadius: illumination * 10,
                  offset: const Offset(0, 0), // Centered glow
                ),
              ]
            : [],
      ),
    );
  }
}
