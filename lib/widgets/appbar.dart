import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QBAppbar extends StatelessWidget {

  final bool isPrimary;
  final String title;

  const QBAppbar({required this.title, this.isPrimary=false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(title, style: const TextStyle(fontSize: 20)),
          !isPrimary ? Positioned(left: 20,child: GestureDetector(onTap: () => Get.back(),child: const Icon(Icons.chevron_left, size: 28))) : const SizedBox(),
        ],
      ),
    );
  }
}

