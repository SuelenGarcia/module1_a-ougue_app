import 'package:flutter/material.dart';

class LoginImageWidget extends StatelessWidget {
  const LoginImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final imageHeight = size.height * 0.4;
    final imageWidth = size.width * 0.6;
    return Container(
      height: imageHeight,
      width: imageWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Image.asset('lib/assets/image.jpg'),
    );
  }
}
