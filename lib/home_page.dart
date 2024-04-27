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


      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
        child: Wrap(
          alignment: WrapAlignment.start,
          crossAxisAlignment: WrapCrossAlignment.start,
          spacing: 20,
          children: [
            GestureDetector(
                onTap: () {},
                child: const PhotoContainer(
                  photoLink: ImagePallete.mood,
                )),
            const PhotoContainer(photoLink: ImagePallete.asthetic,),
            const PhotoContainer(photoLink: ImagePallete.animals,),
            const PhotoContainer(photoLink: ImagePallete.city,),
            const PhotoContainer(photoLink: ImagePallete.travel,),
            const PhotoContainer(photoLink: ImagePallete.sky,),
            const PhotoContainer(photoLink: ImagePallete.road,),
            const PhotoContainer(photoLink: ImagePallete.flowers,),
          ],
        ),
      ),
    );
  }
}
