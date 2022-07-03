import 'package:flutter/material.dart';
import 'package:qube_task/widgets/appbar.dart';

class DummyPage extends StatelessWidget {
  const DummyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: const [
            QBAppbar(title: 'Dummy Page'),
            Expanded(child: Center(child: Text('Dummy Page'))),
          ],
        )
      ),
    );
  }
}
