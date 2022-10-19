import 'package:first_app/assets.dart';

import 'package:first_app/screens/profile_screen.dart';
import 'package:first_app/sections/headerButtonSection.dart';
import 'package:first_app/widgets/avatar.dart';
import 'package:first_app/widgets/blueTick.dart';
import 'package:first_app/widgets/headerButton.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  PostCard({
    required this.avatar,
    required this.name,
    required this.publishedAt,
    required this.postTitle,
    required this.postImage,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(context),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            color: Colors.grey[300],
            thickness: 1,
          ),
          HeaderButtonSection(
            buttonOne: headerButton(
              buttonText: 'Like',
              buttonIcon: Icons.thumb_up_alt_outlined,
              buttonAction: () {
                print('Like This Post !');
              },
              buttonColor: Colors.grey.shade700,
            ),
            buttonTwo: headerButton(
              buttonText: 'Comment',
              buttonIcon: Icons.message_outlined,
              buttonAction: () {
                print('Comment On This Post !');
              },
              buttonColor: Colors.grey.shade700,
            ),
            buttonThree: headerButton(
              buttonText: 'Share',
              buttonIcon: Icons.share_outlined,
              buttonAction: () {
                print('Share This Post !');
              },
              buttonColor: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(width: 4),
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                SizedBox(width: 4),
                displayText(label: 'Comments'),
                SizedBox(width: 10),
                displayText(label: shareCount),
                SizedBox(width: 4),
                displayText(label: 'Shares'),
                SizedBox(width: 10),
                Avatar(
                  displayImage: avatar,
                  displayStatus: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                  onPressed: () {
                    print('Dropdown pressed!');
                  },
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? '' : label,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Image.asset(postImage),
    );
  }

  Widget titleSection() {
    return postTitle != null && postTitle != ''
        ? Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(
              bottom: 5,
              left: 10,
              right: 10,
            ),
            child: Text(
              postTitle == null ? '' : postTitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        : SizedBox();
  }

  Widget postCardHeader(BuildContext context) {
    return ListTile(
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return ProfileScreen(name: name);
              },
            ),
          );
        },
        child: Avatar(
          displayImage: avatar,
          displayStatus: false,
        ),
      ),
      title: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ProfileScreen(name: name);
              }));
            },
            child: Text(
              name,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          BlueTick(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            publishedAt == null ? '' : publishedAt,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print('Open more menu!');
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
