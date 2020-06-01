import 'dart:math';

import 'package:flutter/material.dart';

class DiagonalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        color: Colors.black,
        width: double.infinity,
        child: Wrap(
          children: List.generate(
            500,
            (index) => SizedBox(
              width: 50,
              child: AspectRatio(
                aspectRatio: 1,
                child: Transform.rotate(
                  angle: Random().nextBool() ? pi / 2 : 0,
                  child: CustomPaint(
                    painter: Curved(),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}

class Curved extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final third = size.width / 2;

    final paint = Paint()
      ..color = Color.fromRGBO(29, 161, 242, 20)
      ..strokeWidth = 8
      ..style = PaintingStyle.stroke
      ..strokeJoin = StrokeJoin.round;

    final topCurve = Path();
    topCurve.moveTo(third, 0);
    topCurve.quadraticBezierTo(third, third, 0, third);
    canvas.drawPath(topCurve, paint);

    final bottomCurve = Path();
    bottomCurve.moveTo(size.width, size.height - third);
    bottomCurve.quadraticBezierTo(size.width - third, size.height - third,
        size.width - third, size.height);

    canvas.drawPath(bottomCurve, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}


// This code was written by Robert Felker
// Codepen Link: https://codepen.io/blueaquilae/pen/ExVZJqp
