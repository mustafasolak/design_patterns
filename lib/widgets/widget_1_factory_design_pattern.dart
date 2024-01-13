import 'package:design_patterns/creational/1_factory_design/1_factory_design_pattern.dart';
import 'package:design_patterns/creational/1_factory_design/1_factory_platform_button.dart';
import 'package:flutter/material.dart';

class FactoryDesignPatternWidget extends StatefulWidget {
  const FactoryDesignPatternWidget({super.key});

  @override
  State<FactoryDesignPatternWidget> createState() =>
      _FactoryDesignPatternWidgetState();
}

class _FactoryDesignPatternWidgetState
    extends State<FactoryDesignPatternWidget> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            // Employee employee1 = Employee(EmployeeTypes.programmer);
            // employee1.work();
          },
          child: const Text('Create Programmer'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            // Employee employee2 = Employee(EmployeeTypes.designer);
            // employee2.work();
          },
          child: const Text('Create Designer'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            // Employee employee3 = Employee(EmployeeTypes.financialManager);
            // employee3.work();
          },
          child: const Text('Create Financial Manager'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Employee programmer =
                FactoryDesignPattern.getEmployee(EmployeeTypes.programmer);
            programmer.work();
          },
          child: const Text('Create Programmer Static'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            // Employee employee = Employee(EmployeeTypes.programmer);
            // employee.work();

            Employee designer = Designer();
            designer.work();
          },
          child: const Text('Designer'),
        ),
        const SizedBox(height: 10),
        PlatformButton(Theme.of(context).platform).build(
          () {
            print("Platformbutton ${Theme.of(context).platform} ");
          },
          Text("${Theme.of(context).platform} Button"),
        ),
        const SizedBox(height: 10),
        PlatformButton(TargetPlatform.iOS).build(
          () {
            print("Platformbutton ios");
          },
          const Text("IOS Button"),
        ),
        const SizedBox(height: 10),
        PFButton.button(TargetPlatform.iOS).build(
          () {
            print("IOS button clicked...");
          },
          const Text("Click IOS Button"),
        ),
  
      ],
    );
  }
}
