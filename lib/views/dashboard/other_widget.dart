import 'package:flutter/material.dart';

class OtherWidget extends StatelessWidget {
  const OtherWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              const Text('9 AM - 1 PM', style: TextStyle(fontSize: 12)),
              const SizedBox(width: 50),
              Image.asset('assets/love.png'),
              const SizedBox(width: 5),
              const Text('Love', style: TextStyle(fontSize: 12))
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Text('1 PM - 4 PM', style: TextStyle(fontSize: 12)),
              const SizedBox(width: 50),
              Image.asset('assets/angry.png'),
              const SizedBox(width: 5),
              const Text('Angry', style: TextStyle(fontSize: 12))
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Text('4 PM - 6 PM', style: TextStyle(fontSize: 12)),
              const SizedBox(width: 50),
              Image.asset('assets/angry.png'),
              const SizedBox(width: 5),
              const Text('Angry', style: TextStyle(fontSize: 12))
            ],
          ),
        ],
      ),
    );
  }
}
