import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ostad_assignment_flutter/image_pallete.dart';
import 'package:ostad_assignment_flutter/photo_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.back,color: Colors.white,),
          iconSize: 35,
        ),
        centerTitle: true,
        title: const Text(
          "Photo Gallery",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: HexColor('#2CAB00'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
            color: Colors.white,
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Wrap(
              children: [
                Flexible(
                  child: PhotoContainer(photoLink: ImagePallete.mood,)
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: PhotoContainer(photoLink: ImagePallete.asthetic,)
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: PhotoContainer(photoLink: ImagePallete.animals,)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
