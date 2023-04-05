import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_software/Business_logic/handlers/colors_handler/colors_handler.dart';
import 'package:solid_software/Presentation/widgets/solid_software_color_widget.dart';
import 'package:solid_software/Presentation/widgets/solid_software_guide_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solid Software',
      home: BlocProvider(
        create: (context) => ColorsHandler(),
        child: const Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorsHandler, ColorsState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: (state as ColorsCurrentColor).color,
          body: InkWell(
            onTap: () {
              context.read<ColorsHandler>().generateRandomColor();
            },
            child: const Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SolidSoftwareGuideWidget(),
                  SizedBox(height: 20),
                  SolidSoftwareColorWidget(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
