import 'package:flutter/material.dart';
import 'package:get/get.dart';


class QBDivider extends StatelessWidget {
  const QBDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 0.4, color: Colors.black.withOpacity(0.3),
    );
  }
}
