import 'package:flutter/material.dart';

class ChatBackground extends StatelessWidget {
  const ChatBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ChatBackgroundPainter(),
      size: MediaQuery.of(context).size,
    );
  }
}

class ChatBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final fillPaint = Paint()
      ..color = const Color(0xFF3C2C8D)
      ..style = PaintingStyle.fill;

    final strokePaint = Paint()
      ..color = const Color(0xFFB3CFFF)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    final topPath = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width * 0.35, 0)
      ..quadraticBezierTo(
        size.width * 0.55,
        size.height * 0.1,
        size.width * 0.12,
        size.height * 0.24,
      )
      ..quadraticBezierTo(
        size.width * 0.05,
        size.height * 0.26,
        size.width * 0.05,
        size.height * 0.3,
      )
      ..quadraticBezierTo(
        size.width * 0.02,
        size.height * 0.3,
        0,
        size.height * 0.29,
      )
      ..close();
    canvas.drawPath(topPath, fillPaint);

    final strokePath = Path()
      ..moveTo(size.width * 0.35, 0)
      ..quadraticBezierTo(
        size.width * 0.55,
        size.height * 0.1,
        size.width * 0.12,
        size.height * 0.24,
      )
      ..quadraticBezierTo(
        size.width * 0.05,
        size.height * 0.26,
        size.width * 0.05,
        size.height * 0.3,
      )
      ..quadraticBezierTo(
        size.width * 0.02,
        size.height * 0.3,
        0,
        size.height * 0.29,
      );
    canvas.drawPath(strokePath, strokePaint);

    final bottomRightPath = Path()
      ..moveTo(size.width, size.height)
      ..lineTo(size.width - size.width * 0.35, size.height)
      ..quadraticBezierTo(
        size.width - size.width * 0.55,
        size.height - size.height * 0.1,
        size.width - size.width * 0.12,
        size.height - size.height * 0.24,
      )
      ..quadraticBezierTo(
        size.width - size.width * 0.05,
        size.height - size.height * 0.26,
        size.width - size.width * 0.05,
        size.height - size.height * 0.3,
      )
      ..quadraticBezierTo(
        size.width - size.width * 0.02,
        size.height - size.height * 0.3,
        size.width,
        size.height - size.height * 0.29,
      )
      ..close();
    canvas.drawPath(bottomRightPath, fillPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
