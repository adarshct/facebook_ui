import 'package:first_app/assets.dart';
import 'package:first_app/sections/headerButtonSection.dart';
import 'package:first_app/sections/roomSection.dart';
import 'package:first_app/sections/statusSection.dart';
import 'package:first_app/sections/storySection.dart';
import 'package:first_app/sections/suggestionSection.dart';
import 'package:first_app/widgets/circularButton.dart';
import 'package:first_app/widgets/headerButton.dart';
import 'package:first_app/widgets/postCard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );

    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'facebook',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print('Search Screen Appears !');
              },
            ),
            CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print('Messenger Screen Appears !');
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                buttonText: 'Live',
                buttonIcon: Icons.video_call,
                buttonAction: () {
                  print('Go Live!');
                },
                buttonColor: Colors.red,
              ),
              buttonTwo: headerButton(
                buttonText: 'Photo',
                buttonIcon: Icons.photo_library,
                buttonAction: () {
                  print('Take Photo!');
                },
                buttonColor: Colors.green,
              ),
              buttonThree: headerButton(
                buttonText: 'Room',
                buttonIcon: Icons.video_call,
                buttonAction: () {
                  print('Create Room!');
                },
                buttonColor: Colors.purple,
              ),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: mohanlal,
              name: 'Mohanlal',
              publishedAt: '5h',
              postTitle: 'Click by Indrajith Sukumaran @Indrajith_S',
              postImage: mohanlalPost,
              likeCount: '10K',
              commentCount: '1K',
              shareCount: '1K',
            ),
            thickDivider,
            PostCard(
              avatar: mammootty,
              name: 'Mammootty',
              publishedAt: '1 Day Ago',
              postTitle: 'Media Friends',
              postImage: mammoottyPost,
              likeCount: '10K',
              commentCount: '1.5K',
              shareCount: '1K',
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              avatar: dulquer,
              name: 'Dulquer Salman',
              publishedAt: '1 Day Ago',
              postTitle: dqCaption,
              postImage: dulquerPost,
              likeCount: '20K',
              commentCount: '5K',
              shareCount: '4K',
            ),
            thickDivider,
            PostCard(
              avatar: prithviraj,
              name: 'Prithviraj Sukumaran',
              publishedAt: '2 Day Ago',
              postTitle: prithviCaption,
              postImage: prithvirajPost,
              likeCount: '5K',
              commentCount: '500',
              shareCount: '300',
            ),
            thickDivider,
            PostCard(
              avatar: nivin,
              name: 'Nivin Pauly',
              publishedAt: '2 Days Ago',
              postTitle: nivinCaption,
              postImage: nivinPost,
              likeCount: '4K',
              commentCount: '300',
              shareCount: '100',
            ),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
