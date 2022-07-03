import 'package:flutter/material.dart';
import 'package:qube_task/misc/hex_color.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: HexColor('#c8e5f7'), borderRadius: BorderRadius.circular(5)
            ),
            child: const Text('10 Jun, 2021', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600))
          ),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              SizedBox(width: 12.5),
              CalendarTile(dayInt: 10, dayString: 'Mo',isSelected: true),
              CalendarTile(dayInt: 11, dayString: 'Tu'),
              CalendarTile(dayInt: 12, dayString: 'We'),
              CalendarTile(dayInt: 13, dayString: 'Th'),
              CalendarTile(dayInt: 14, dayString: 'Fr'),
              CalendarTile(dayInt: 15, dayString: 'Sa'),
              CalendarTile(dayInt: 16, dayString: 'Su'),
              SizedBox(width: 12.5),
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }



}




class CalendarTile extends StatelessWidget {

  final bool isSelected;
  final String dayString;
  final int dayInt;

  const CalendarTile({this.isSelected = false, required this.dayString, required this.dayInt, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7.5),
      decoration: BoxDecoration(color: isSelected ? HexColor('#4f4f4f') : Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 10),
        child: Column(
          children: [
            Text(dayString, style: TextStyle(color: HexColor('#A7A7A7'), fontWeight: FontWeight.w200)),
            const SizedBox(height: 5),
            Text(dayInt.toString(), style: TextStyle(color: isSelected ? HexColor('#F1F2F3') : HexColor('#121212'), fontWeight: FontWeight.w200)),
            const SizedBox(height: 25)
          ],
        ),
      ),
    );
  }
}
