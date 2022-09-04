
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class MyShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint();
    final path = Path();
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5 ;
    paint.shader=ui.Gradient.radial(
      Offset(size.width/2.5, size.height/1.2), // center
      500, // radius
      [Colors.blue, Colors.white], // colors
    );
    path.moveTo( size.width*.25, size.height );
    path.quadraticBezierTo(
        size.width*.25,
        size.height*.95,
        size.width*.5,
        size.height*.95);
    path.quadraticBezierTo(
        size.width,
        size.height*.95,
        size.width,
        size.height*.6);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    canvas.drawPath(path, paint);

    final paint2 = Paint();
    final path2 = Path();
    paint2.style = PaintingStyle.fill;
    paint2.strokeWidth = 5 ;
    paint2.shader=ui.Gradient.radial(
      Offset(size.width , size.height/5 ), // center
      500, // radius
      [Colors.red, Colors.orange], // colors
    );

    path2.moveTo(0, size.height*.4);
    path2.quadraticBezierTo(
        size.width*.06,
        size.height*.4  ,
        size.width*.08,
        size.height*.35);
    path2.quadraticBezierTo(
        size.width*.12,
        size.height*.1 ,
        size.width*0.75,
        size.height*.09);
    path2.quadraticBezierTo(
        size.width,
        size.height*.1 ,
        size.width,
        size.height*0);


    path2.lineTo(0,0);
    path2.lineTo(0, size.height*.4);

    canvas.drawPath(path2, paint2);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }



}
