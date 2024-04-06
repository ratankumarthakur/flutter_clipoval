import 'package:flutter/material.dart';

class widget1 extends StatefulWidget {
  const widget1({super.key});

  @override
  State<widget1> createState() => _widget1State();
}

class _widget1State extends State<widget1> {

  bool? ischecked=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipOval(
          clipper: CustomClip(),
          child: Container(
            width: 80,
            height: 80,
            color: Colors.orange,
          ),
        ),
      )
    );
  }
}
class CustomClip extends CustomClipper<Rect>{
  @override
  Rect getClip(Size size){
    return Rect.fromLTWH(0, 0, size.width-55, size.height);
  }
  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper){
    return false;
  }
}
