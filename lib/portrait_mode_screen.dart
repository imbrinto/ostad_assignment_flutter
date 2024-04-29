import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ostad_assignment_flutter/image_pallete.dart';
import 'package:ostad_assignment_flutter/photo_container.dart';

class PortraitModeScreen extends StatelessWidget {
  const PortraitModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 1, 10, 10),
      child: ListView(
        children: [
          const PhotoContainer(
            photoLink: ImagePallete.mood,
            containerWidth: 390,
            containerHeight: 265,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
                'Mood With Nature',
                style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    fontFamily: 'Poppins')
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 1, 10, 10),
            child: Text(
                'Being In Nature, Or Even Viewing Scenes Of Nature, Reduces Anger, Fear, And Stress And Increases Pleasant Feelings',
                style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: 'Poppins')
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(355, 40),
                backgroundColor: HexColor('#2CAB00'),
                elevation: 8,
              ),
              child: const Text(
                'See More',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins'),
              ),
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Suggestion',
              style: TextStyle(color: HexColor('#2CAB00'),
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  fontFamily: 'Poppins'
              ),
            ),
          ),
          const Wrap(
            spacing: 12,
            children: [
              PhotoContainer(
                photoLink: ImagePallete.dawn,
                photoText: 'Dawn',
                containerHeight: 160,
                containerWidth: 160,
              ),
              PhotoContainer(
                photoLink: ImagePallete.leaves,
                photoText: 'Leaves',
                containerHeight: 160,
                containerWidth: 160,
              )
            ],
          )
        ],
      ),
    );
  }
}
