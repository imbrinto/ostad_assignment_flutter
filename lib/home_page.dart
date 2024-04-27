import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ostad_assignment_flutter/image_pallete.dart';
import 'package:ostad_assignment_flutter/mood_page.dart';
import 'package:ostad_assignment_flutter/photo_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          CupertinoIcons.back,
          color: Colors.white,
          size: 30,
        ),
        centerTitle: true,
        title: const Text(
          "Photo Gallery",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: HexColor('#2CAB00'),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
        child: SingleChildScrollView(
          child: Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 20,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MoodPage(),
                      ),
                    );
                  },
                  child: const PhotoContainer(
                    photoLink: ImagePallete.mood,
                    photoText: 'Mood',
                  )),
              const PhotoContainer(
                photoLink: ImagePallete.asthetic,
                photoText: 'Asthetic',
              ),
              const PhotoContainer(
                photoLink: ImagePallete.animals,
                photoText: 'Animals',
              ),
              const PhotoContainer(
                photoLink: ImagePallete.city,
                photoText: 'City',
              ),
              const PhotoContainer(
                photoLink: ImagePallete.travel,
                photoText: 'Travel',
              ),
              const PhotoContainer(
                photoLink: ImagePallete.sky,
                photoText: 'Sky',
              ),
              const PhotoContainer(
                photoLink: ImagePallete.road,
                photoText: 'Road',
              ),
              const PhotoContainer(
                photoLink: ImagePallete.flowers,
                photoText: 'Flowers',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
