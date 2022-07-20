import 'package:flutter/material.dart';

class Headersc extends  StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: CustomPaint(
          painter: HeaderPicoPainter(),
        )
      ),
    );
  }
}


class HeaderDiagonalPainter extends CustomPainter{
@override
  void paint(Canvas canvas, Size size) {
  final lapiz = Paint();
  // propiedades del lapiz
  lapiz.color = Colors.pink;
  lapiz.style = PaintingStyle.fill;
  lapiz.strokeWidth = 20.0;

  //definir la pizarra
final path = Path();
 
//dibujamos forma diagonal
path.lineTo(0 , size.height*.35);
path.lineTo(size.width, size.height*.25);
path.lineTo(size.width, 0);
path.lineTo(0, 0);
canvas.drawPath(path, lapiz);

}
  
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }

}


class HeaderPicoPainter extends CustomPainter{
@override
  void paint(Canvas canvas, Size size) {
  final lapiz = Paint();
  // propiedades del lapiz
  lapiz.color = Colors.pink;
  lapiz.style = PaintingStyle.fill;
  lapiz.strokeWidth = 20.0;

  //definir la pizarra
final path = Path();
 
//dibujamos forma pico
path.lineTo(0 , size.height*.35);
path.lineTo(size.width*.5, size.height*.45);
path.lineTo(size.width, size.height*.35);
path.lineTo(size.width, 0);
path.lineTo(0, 0);
canvas.drawPath(path, lapiz);

}
  
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }

}