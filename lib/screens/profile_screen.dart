import 'package:first_app/assets.dart';
import 'package:first_app/widgets/profile.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String name;

  ProfileScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: profileBody(),
    );
  }

  Widget profileBody() {
    return name == 'Mohanlal'
        ? Profile(
            profileCover: mohanlalCover,
            avatar: mohanlal,
            followersCount: '7.2M',
            followingCount: '7',
            name: name,
          )
        : name == 'Mammootty'
            ? Profile(
                profileCover: mammoottyCover,
                avatar: mammootty,
                followersCount: '5M',
                followingCount: '7',
                name: name,
              )
            : name == 'Dulquer Salman'
                ? Profile(
                    profileCover: dulquerCover,
                    avatar: dulquer,
                    followersCount: '6.7M',
                    followingCount: '120',
                    name: name,
                  )
                : name == 'Prithviraj Sukumaran'
                    ? Profile(
                        profileCover: prithvirajCover,
                        avatar: prithviraj,
                        followersCount: '4.5M',
                        followingCount: '4',
                        name: name,
                      )
                    : name == 'Nivin Pauly'
                        ? Profile(
                            profileCover: nivinCover,
                            avatar: nivin,
                            followersCount: '5.5M',
                            followingCount: '25',
                            name: name,
                          )
                        : SizedBox();
  }
}
