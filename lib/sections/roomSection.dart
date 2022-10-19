import 'package:first_app/assets.dart';
import 'package:first_app/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: [
          createRoomButton(),
          Avatar(
            displayImage: dulquer,
            displayStatus: true,
          ),
          Avatar(
            displayImage: prithviraj,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mammootty,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mohanlal,
            displayStatus: true,
          ),
          Avatar(
            displayImage: nivin,
            displayStatus: true,
          ),
          Avatar(
            displayImage: dulquer,
            displayStatus: true,
          ),
          Avatar(
            displayImage: prithviraj,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mammootty,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mohanlal,
            displayStatus: true,
          ),
          Avatar(
            displayImage: nivin,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          side: BorderSide(
            color: Colors.blue.shade100,
            width: 2,
          ),
        ),
        onPressed: () {
          print('Create a chat room!');
        },
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text('Create\n Room'),
      ),
    );
  }
}
