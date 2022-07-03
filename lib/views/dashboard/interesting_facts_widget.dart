import 'package:flutter/material.dart';

class InterestingFactsWidget extends StatelessWidget {
  const InterestingFactsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String description = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit euismod risus elementum magna scelerisque nunc sed varius. Tellus quis tristique adipiscing sed metus, sit ac adipiscing. Leo aenean sed eu purus maecenas posuere ';

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),
              const Text('You May Find This Interesting', style: TextStyle(fontSize: 18)),
              const SizedBox(height: 10),
              Text(description, style: TextStyle(color: Colors.black.withOpacity(0.4))),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              SizedBox(width: 20),
              VideoTile(imageUri: 'assets/image_!.png'),
              SizedBox(width: 15),
              VideoTile(imageUri: 'assets/image_!.png'),
              SizedBox(width: 15),
            ],
          ),
        )
      ],
    );
  }
}



class VideoTile extends StatelessWidget {

  final String imageUri;

  const VideoTile({required this.imageUri, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 208, height: 128,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
        image: DecorationImage(image: AssetImage(imageUri), fit: BoxFit.cover, scale: 2)
      ),
      child: Center(child: Image.asset('assets/play.png')),
    );
  }
}
