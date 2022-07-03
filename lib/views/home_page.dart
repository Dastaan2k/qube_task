import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Column(
            children: [
              const QBAppbar(title: 'Home', isPrimary: true),
              Expanded(
                  child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(onPressed: () => Get.toNamed('/dashboard'), child: const Text('Go to Dashboard')),
                          const SizedBox(height: 20),
                          ElevatedButton(onPressed: () => Get.toNamed('/dummy'), child: const Text('Go to Dummy Page'))
                        ],
                      )
                  )
              ),
            ],
          )
      ),
    );
  }
}
