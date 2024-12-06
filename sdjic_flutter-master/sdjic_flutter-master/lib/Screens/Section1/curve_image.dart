import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurveImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Curve Image Widget '),
      centerTitle: true,),
      body: Container(
        child: ClipPath(
            clipper: MyClipper(),
            child: Image.asset('assets/images/i0.jpeg'),
          ),
        ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path=Path();
    path.lineTo(0.0, size.height-30);
    path.quadraticBezierTo(size.width/4, size.height, size.width/2, size.height-30);
    path.quadraticBezierTo(size.width-(size.width/4), size.height-60, size.width, size.height-30);
    path.lineTo(size.width,0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

}