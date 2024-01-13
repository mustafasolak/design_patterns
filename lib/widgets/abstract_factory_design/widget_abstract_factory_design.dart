import 'package:design_patterns/creational/2_abstract_factory_design/abstract_factory_design.dart';
import 'package:flutter/material.dart';

class AbstractFactoryDesign extends StatelessWidget {
  const AbstractFactoryDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // AbstractFactoryImpl().buildButton(context, "Click Platform Button", () {
        //   print("Platform button clicked !");
        // }),
        // const SizedBox(height: 20),
        // AbstractFactoryImpl().buildIndicator(context),
        AbstractFactoryImpl.buildButton(context, "Click Platform Button", () {
          print("Platform button clicked !");
        }),
        const SizedBox(height: 20),
        AbstractFactoryImpl.buildIndicator(context),
      ],
    );
  }
}
