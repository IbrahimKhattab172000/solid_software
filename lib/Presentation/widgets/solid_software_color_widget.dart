import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software/Business_logic/handlers/colors_handler/colors_handler.dart';
import 'package:solid_software/Presentation/widgets/solid_software_image.dart';

class SolidSoftwareColorWidget extends StatelessWidget {
  const SolidSoftwareColorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              context.read<ColorsHandler>().generateRandomColor();
            },
            child: const SolidSoftwareImage(
              height: 150,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
