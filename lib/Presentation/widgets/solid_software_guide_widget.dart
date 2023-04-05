import 'package:flutter/material.dart';
import 'package:solid_software/Presentation/widgets/solid_software_image.dart';
import 'package:solid_software/constants/solid_software_size.dart';

class SolidSoftwareGuideWidget extends StatelessWidget {
  const SolidSoftwareGuideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xff131723),
          borderRadius: BorderRadius.circular(
            SolidSoftwareSize().borderRadius50,
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Hi! Solid Software",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 10),
            SolidSoftwareImage(height: 30, width: 30),
            SizedBox(width: 10),
            Center(
              child: Text(
                "Press the image below 🚀",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
