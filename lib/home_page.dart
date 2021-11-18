import 'package:bottom_navigator_dialog/central_with_devices.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200, left: 50),
            child: CentralWithDevices(),
          ),
        ],
      ),
    );
  }
}
