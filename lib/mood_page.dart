import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
        body: OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.landscape) {
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
                                Text(
                                  'Mood With Nature',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                      ),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  'Being In Nature, Or Even Viewing Scenes Of Nature, Reduces Anger, Fear, And Stress And Increases Pleasant Feelings',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
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
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                const SizedBox(
                                  height: 11,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    'Suggestion',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          color: HexColor('#2CAB00'),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),
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
          } else {
            return Padding(
              padding: const EdgeInsets.fromLTRB(10, 1, 10, 10),
              child: ListView(
                children: [
                  const PhotoContainer(
                    photoLink: ImagePallete.mood,
                    containerWidth: 390,
                    containerHeight: 265,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Mood With Nature',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 1, 10, 10),
                    child: Text(
                      'Being In Nature, Or Even Viewing Scenes Of Nature, Reduces Anger, Fear, And Stress And Increases Pleasant Feelings',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
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
                            color: Colors.white, fontWeight: FontWeight.w400),
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
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: HexColor('#2CAB00'),
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
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
        }));
  }
}
