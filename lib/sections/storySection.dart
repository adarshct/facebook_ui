import 'package:first_app/assets.dart';
import 'package:first_app/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: 'Add to story',
            story: dulquer,
            avatar: dulquer,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: 'Mohanlal',
            story: mohanlalPost,
            avatar: mohanlal,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Mammootty',
            story: mammoottyPost,
            avatar: mammootty,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Dulquer',
            story: dulquerPost,
            avatar: dulquer,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Prithviraj',
            story: prithvirajPost,
            avatar: prithviraj,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Nivin Pauly',
            story: nivinPost,
            avatar: nivin,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
