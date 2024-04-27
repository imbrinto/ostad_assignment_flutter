import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ostad_assignment_flutter/image_pallete.dart';
import 'package:ostad_assignment_flutter/photo_container.dart';

class MoodPage extends StatelessWidget {
  const MoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.back,
            color: Colors.white,
            size: 30,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Mood",
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
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Wrap(
          alignment: WrapAlignment.start,
          children: [
            PhotoContainer(photoLink: ImagePallete.mood,containerWidth: 390, containerHeight: 325,),
          ],
        ),
      ),
    );
  }
}
