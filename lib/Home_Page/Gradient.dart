//importing dart base packages
import 'package:flutter/material.dart';

class GradientIcon extends StatelessWidget {
  @required
  GradientIcon(
    //icon parameter
    this.icon,
    //size parameter
    this.size,
    this.gradient,
  );

  final IconData icon;
  final double size;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      shaderCallback: (Rect bounds) {
        final Rect rect = Rect.fromLTRB(0, 0, size, size);
        return gradient.createShader(rect);
      },
    );
  }
}

//   GradientIcon(
//      Icons.done_all,
//      50.0,
//          LinearGradient(
//              colors: <Color>[
//                Colors.red,
//                Colors.yellow,
//                Colors.blue,
//                                ],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//               ),
