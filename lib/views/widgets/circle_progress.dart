import 'dart:math';

import 'package:flutter/material.dart';

class CircleProgress extends StatelessWidget {
  final double percent;
  const CircleProgress({Key? key, required this.percent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: CustomPaint(
        painter: CircleProgressPainter(percent: percent),
        child: Center(
            child: Text(
          '$percent%',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}

class CircleProgressPainter extends CustomPainter {
  final double percent;

  const CircleProgressPainter({required this.percent});
  @override
  void paint(Canvas canvas, Size size) {
    const angle = 2 * pi;

    final subPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    canvas.drawArc(
      Rect.fromLTWH(0, 0, size.width, size.height),
      0,
      angle,
      false,
      subPaint,
    );

    final supPaint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    canvas.drawArc(
      Rect.fromLTWH(0, 0, size.width, size.height),
      -1.570796,
      angle * percent / 100,
      false,
      supPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
