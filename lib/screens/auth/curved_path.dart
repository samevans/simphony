import 'package:flutter/material.dart';

class CurvedPath extends StatelessWidget {

  final String _title;
  final String _subTitle;

  CurvedPath(this._title, this._subTitle);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        height: 500.0,
      ),
      painter: CurvePainter(_title, _subTitle),
    );
  }
}

class CurvePainter extends CustomPainter {

  final String _title;
  final String _subTitle;

  final Color colorOne = Colors.blue;
  final Color colorTwo = Colors.blue[300];
  final Color colorThree = Colors.blue[100];

  final TextPainter textPainter = TextPainter(textDirection: TextDirection.ltr);
  double textHeightOffset = 100.0;
  double textFontSize = 20.0;
  FontWeight textFontWeight = FontWeight.w500;

  CurvePainter(this._title, this._subTitle);

  @override
  void paint(Canvas canvas, Size size) {
    
    Paint paint = Paint();
    
    Path path = Path();
    path.lineTo(0, size.height * 0.55);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.70, size.width * 0.17, size.height * 0.90);
    path.quadraticBezierTo(size.width * 0.20, size.height, size.width * 0.25, size.height * 0.90);
    path.quadraticBezierTo(size.width * 0.40, size.height * 0.40, size.width * 0.50, size.height * 0.70);
    path.quadraticBezierTo(size.width * 0.60, size.height * 0.85, size.width * 0.65, size.height * 0.65);
    path.quadraticBezierTo(size.width * 0.70, size.height * 0.90, size.width, 0.0);
    path.close();

    paint.color = colorThree;
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height*0.40);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.80, size.width * 0.15, size.height * 0.60);
    path.quadraticBezierTo(size.width * 0.20, size.height * 0.45, size.width * 0.27, size.height * 0.60);
    path.quadraticBezierTo(size.width * 0.45, size.height, size.width * 0.50, size.height * 0.80);
    path.quadraticBezierTo(size.width * 0.55, size.height * 0.45, size.width * 0.75, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.85, size.height * 0.93, size.width, size.height * 0.60);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = colorTwo;
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height*0.65);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.55, size.width * 0.22, size.height * 0.70);
    path.quadraticBezierTo(size.width * 0.30, size.height * 0.90, size.width * 0.40, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.52, size.height * 0.50, size.width * 0.65, size.height * 0.70);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.85, size.width, size.height * 0.10);
    path.lineTo(size.width * 0.75, 0);
    path.close();

    paint.color = colorOne;
    canvas.drawPath(path, paint);

    // var rect = Rect.fromLTRB(-80, size.height - 100, size.width * 0.6, size.height + 230);
    // final Path circle = Path()..addOval(rect);
    // canvas.drawPath(circle, Paint()..color = colorOne);

    drawText(canvas, size, _title);
    drawText(canvas, size, _subTitle);
  }

  void drawText(Canvas canvas, Size size, String text){
    textPainter.text = TextSpan(
      style: TextStyle(
          color: Colors.white,
          fontSize: textFontSize,
          letterSpacing: 1.2,
          fontWeight: textFontWeight
      ),
      text: text
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(30, textHeightOffset));

    textHeightOffset += 20.0;
    textFontSize = 55.0;
    textFontWeight = FontWeight.w600;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return null;
  }
}