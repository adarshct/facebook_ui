import 'package:first_app/assets.dart';
import 'package:first_app/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text('People You May Know'),
            trailing: IconButton(
              onPressed: () {
                print('Click To See More');
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  avatar: vijay,
                  name: 'Actor Vijay',
                  mutualFriends: '4 Mutual Friends',
                  addFriend: () {
                    print('Request friendship!');
                  },
                  removeFriend: () {
                    print('Remove suggestion!');
                  },
                ),
                SuggestionCard(
                  avatar: suriya,
                  name: 'Suriya Sivakumar',
                  mutualFriends: '8 Mutual Friends',
                  addFriend: () {
                    print('Request friendship!');
                  },
                  removeFriend: () {
                    print('Remove suggestion!');
                  },
                ),
                SuggestionCard(
                  avatar: kamal,
                  name: 'Kamal Hassan',
                  mutualFriends: '3 Mutual Friends',
                  addFriend: () {
                    print('Request friendship!');
                  },
                  removeFriend: () {
                    print('Remove suggestion!');
                  },
                ),
                SuggestionCard(
                  avatar: rajini,
                  name: 'Rajinikanth',
                  mutualFriends: '1 Mutual Friend',
                  addFriend: () {
                    print('Request friendship!');
                  },
                  removeFriend: () {
                    print('Remove suggestion!');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
