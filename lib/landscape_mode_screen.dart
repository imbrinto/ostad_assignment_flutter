import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ostad_assignment_flutter/image_pallete.dart';
import 'package:ostad_assignment_flutter/photo_container.dart';

class LandscapeModeScreen extends StatelessWidget {
  const LandscapeModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 1, 10, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
              flex: 3,
              child: PhotoContainer(
                photoLink: ImagePallete.mood,
                containerWidth: 380,
                containerHeight: 285,
              )),
          Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 1, 5, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                            'Mood With Nature',
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                fontFamily: 'Poppins')
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                            'Being In Nature, Or Even Viewing Scenes Of Nature, Reduces Anger, Fear, And Stress And Increases Pleasant Feelings',
                            style: TextStyle(color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontFamily: 'Poppins')
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(500, 40),
                              backgroundColor: HexColor('#2CAB00')),
                          child: const Text(
                            'See More',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins'
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
                                  fontSize: 14,
                                  fontFamily: 'Poppins')
                          ),
                        ),
                        const Wrap(
                          children: [
                            PhotoContainer(
                              photoLink: ImagePallete.dawn,
                              photoText: 'Dawn',
                            ),
                            PhotoContainer(
                              photoLink: ImagePallete.leaves,
                              photoText: 'Leaves',
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
