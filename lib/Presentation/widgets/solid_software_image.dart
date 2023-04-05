import 'package:flutter/material.dart';
import 'package:solid_software/constants/solid_software_size.dart';

class SolidSoftwareImage extends StatelessWidget {
  final double height;
  final double width;

  const SolidSoftwareImage({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          SolidSoftwareSize().borderRadius80,
        ),
        child: Image.asset("assets/images/solid.jfif"),
      ),
    );
  }
}
