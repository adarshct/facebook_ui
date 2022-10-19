import 'package:first_app/assets.dart';
import 'package:first_app/widgets/avatar.dart';
import 'package:first_app/widgets/blueTick.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String profileCover;
  final String avatar;
  final String name;
  final String followersCount;
  final String followingCount;

  Profile({
    required this.profileCover,
    required this.avatar,
    required this.followersCount,
    required this.followingCount,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Column(
            children: [
              dpAndCp(),
              nameAndFollowCount(),
              optionButtons(),
            ],
          ),
        ),
        Divider(
          thickness: 15,
          color: Colors.grey[400],
        ),
        tabOptions(),
        Divider(thickness: 1),
      ],
    );
  }

  Widget dpAndCp() {
    return Container(
      height: 360,
      child: Stack(
        children: [
          Container(
            height: 250,
            margin: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 15,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(profileCover),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 100,
            child: Avatar(
              displayImage: avatar,
              displayStatus: false,
              displayBorder: true,
              width: 200,
              height: 200,
              borderColor: Colors.white,
              borderWidth: 5,
            ),
          ),
        ],
      ),
    );
  }

  Widget nameAndFollowCount() {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                BlueTick(
                  height: 18,
                  width: 18,
                  tickSize: 14,
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  followersCount,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5),
                Text('followers'),
                SizedBox(width: 10),
                Container(
                  height: 3,
                  width: 3,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  followingCount,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5),
                Text('following'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget optionButtons() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 275,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                backgroundColor: Color.fromARGB(255, 16, 26, 220),
                elevation: 0,
              ),
              onPressed: () {},
              icon: Icon(
                Icons.chat,
              ),
              label: Text('Message'),
            ),
          ),
          SizedBox(
            width: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300],
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                elevation: 0,
              ),
              onPressed: () {},
              child: Icon(
                Icons.library_add_check,
              ),
            ),
          ),
          SizedBox(
            width: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.more_horiz),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300],
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                elevation: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget tabOptions() {
    return Container(
      padding: EdgeInsets.only(top: 12, bottom: 9, left: 22),
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Posts',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(width: 25),
          Text(
            'About',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(width: 25),
          Container(
            child: Row(
              children: [
                Text(
                  'Photos',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[800],
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                )
              ],
            ),
          ),
          SizedBox(width: 25),
          Text(
            'Mentions',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
    );
  }

  // Widget profileDetails() {
  //   return Container(
  //     width: double.infinity,
  //     height: 180,
  //     padding: EdgeInsets.all(10),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text(
  //           'Details',
  //           style: TextStyle(
  //             fontWeight: FontWeight.bold,
  //             fontSize: 25,
  //           ),
  //         ),
  //         Container(
  //           padding: EdgeInsets.symmetric(vertical: 10),
  //           child: Row(
  //             children: [
  //               Icon(
  //                 Icons.info,
  //                 color: Colors.grey,
  //                 size: 25,
  //               ),
  //               Container(child: Column(children: [Text('Page'),],),),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
