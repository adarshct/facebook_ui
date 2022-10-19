import 'package:first_app/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String mutualFriends;
  final void Function() addFriend;
  final void Function() removeFriend;

  SuggestionCard({
    required this.avatar,
    required this.name,
    required this.mutualFriends,
    required this.addFriend,
    required this.removeFriend,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(
            width: 1,
            color: Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 10,
        ),
        height: 140,
        child: Column(
          children: [
            ListTile(
              title: Text(name != null ? name : ''),
              subtitle: Text(mutualFriends != null ? mutualFriends : ''),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(
                    buttonAction: addFriend,
                    buttonIcon: Icons.account_box,
                    buttonColor: Colors.blue.shade700,
                    buttonTextColor: Colors.white,
                    buttonIconColor: Colors.white,
                    buttonText: 'Add Friend',
                  ),
                  blankButton(
                    buttonAction: removeFriend,
                    buttonText: 'Remove',
                    buttonColor: Colors.grey.shade300,
                    buttonTextColor: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget blankButton({
    required void Function() buttonAction,
    required String buttonText,
    required Color buttonColor,
    required Color buttonTextColor,
  }) {
    return SizedBox(
      width: 100,
      height: 40,
      child: TextButton(
        onPressed: buttonAction,
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: buttonTextColor,
          ),
        ),
      ),
    );
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttonText,
  }) {
    return SizedBox(
      width: 120,
      height: 40,
      child: TextButton.icon(
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: buttonIconColor,
        ),
        label: Text(
          buttonText,
          style: TextStyle(
            color: buttonTextColor,
          ),
        ),
      ),
    );
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: avatar != null
            ? Image.asset(
                avatar,
                height: 250,
                fit: BoxFit.cover,
              )
            : SizedBox(),
      ),
    );
  }
}
