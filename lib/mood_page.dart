import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ostad_assignment_flutter/landscape_mode_screen.dart';
import 'package:ostad_assignment_flutter/portrait_mode_screen.dart';

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
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins'),
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
            return const LandscapeModeScreen();
          } else {
            return const PortraitModeScreen();
          }
        }));
  }
}
