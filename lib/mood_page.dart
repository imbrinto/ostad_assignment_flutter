import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 1, 10, 10),
          child: Wrap(
            alignment: WrapAlignment.start,
            children: [
              const PhotoContainer(
                photoLink: ImagePallete.mood,
                containerWidth: 390,
                containerHeight: 275,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                // color: Colors.blue,
                child: const Text('Mood With Nature',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w400)),
              ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 10, 5),
                  // color: Colors.blue,
                  child: const Wrap(
                    children: [Text(
                        'Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400))],
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
