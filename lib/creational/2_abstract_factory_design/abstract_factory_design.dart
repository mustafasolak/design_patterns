import 'package:design_patterns/creational/1_factory_design/factory_platform_button.dart';
import 'package:design_patterns/creational/1_factory_design/factory_platform_indicator.dart';
import 'package:flutter/material.dart';

// abstract class AbstractFactory {
//   Widget buildButton(BuildContext context, String text, VoidCallback onPressed);

//   Widget buildIndicator(BuildContext context);
// }

// class AbstractFactoryImpl implements AbstractFactory {
class AbstractFactoryImpl  {
  // @override
  // Widget buildButton(
  static Widget buildButton(
      BuildContext context, String text, VoidCallback onPressed) {
    return PlatformButton(Theme.of(context).platform).build(
      onPressed,
      Text(text),
    );
  }

  // @override
  // Widget buildIndicator(BuildContext context) {
 static Widget buildIndicator(BuildContext context) {
    return PlatformIndicator(Theme.of(context).platform).build();
  }
}
