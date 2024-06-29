// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;

    // Background color
    paint.color = Color(0xFF0C1A53);
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);

    // Blue gradient circle
    final gradient = RadialGradient(
      colors: [Colors.transparent, Colors.blue.shade300],
      stops: [0.5, 1.0],
      center: Alignment(0.0, -0.5),
      radius: 1.5,
    );

    paint.shader = gradient.createShader(Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 3),
      radius: size.width,
    ));

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 3), size.width, paint);

    // Clear the shader to draw the next shapes without gradient
    paint.shader = null;

    // Additional blue arcs
    final arcPaint = Paint()
      ..color = Colors.blue.shade300.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 30.0;

    canvas.drawArc(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 3),
          radius: size.width * 0.6),
      0,
      3.14,
      false,
      arcPaint,
    );

    canvas.drawArc(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 3),
          radius: size.width * 0.7),
      0,
      3.14,
      false,
      arcPaint,
    );

    canvas.drawArc(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 3),
          radius: size.width * 0.8),
      0,
      3.14,
      false,
      arcPaint,
    );
    canvas.drawArc(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 3),
          radius: size.width * 0.8),
      0,
      3.14,
      false,
      arcPaint,
    );

    // You can add more shapes as needed
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
