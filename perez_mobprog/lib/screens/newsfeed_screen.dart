import 'package:flutter/material.dart';

import '../widgets/newsfeed_card.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsFeedCard(
          userName: 'Ron Jacob Perez',
          profileImagePath: 'assets/images/Papoy.jpg',
          postContent: 'Merry Christmas',
          numOfLikes: 7,
          date: 'November 20, 2026',
        ),
        NewsFeedCard(
          userName: 'Tony Stark',
          profileImagePath: 'assets/images/Tony.jpg',
          postContent: 'Wabalabadabdab',
          numOfLikes: 200,
          hasImage: true,
          imagePath: 'assets/images/boat.jpg',
          date: 'November 2, 2026',
        ),
        NewsFeedCard(
          userName: 'Maria Santos',
          profileImagePath: 'assets/images/owl.jpg',
          postContent: 'Studying Flutter tonight',
          numOfLikes: 15,
          date: 'November 3, 2026',
        ),
        NewsFeedCard(
          userName: 'Hawkeye',
          profileImagePath: 'assets/images/Hawkeye.jpg',
          postContent: 'Look at this owl',
          numOfLikes: 98,
          hasImage: true,
          imagePath: 'assets/images/owl.jpg',
          date: 'November 4, 2026',
        ),
        NewsFeedCard(
          userName: 'Hulk',
          profileImagePath: 'assets/images/Hulk.jpg',
          postContent: 'Coffee first, code later',
          numOfLikes: 33,
          date: 'November 5, 2026',
        ),
        NewsFeedCard(
          userName: 'Steve Rogers',
          profileImagePath: 'assets/images/Steve Rogers.jpg',
          postContent: 'Lab activity done',
          numOfLikes: 54,
          hasImage: true,
          imagePath: 'assets/images/rocks.jpg',
          date: 'November 6, 2026',
        ),
        NewsFeedCard(
          userName: 'Black Widow',
          profileImagePath: 'assets/images/Black Widow.jpg',
          postContent: 'Weekend vibes',
          numOfLikes: 21,
          date: 'December 7, 2026',
        ),
        NewsFeedCard(
          userName: 'Andrew Garfield',
          profileImagePath: 'assets/images/Andrew Garfield.jpg',
          postContent: 'New project idea',
          numOfLikes: 76,
          hasImage: true,
          imagePath: 'assets/images/boat.jpg',
          date: 'December 8, 2026',
        ),
        NewsFeedCard(
          userName: 'Miles Morales',
          profileImagePath: 'assets/images/Spidermiles.jpg',
          postContent: 'Almost finals week',
          numOfLikes: 12,
          date: 'December 9, 2026',
        ),
        NewsFeedCard(
          userName: 'Daredevil',
          profileImagePath: 'assets/images/Daredevil.jpg',
          postContent: 'Happy holidays everyone',
          numOfLikes: 150,
          hasImage: true,
          imagePath: 'assets/images/owl.jpg',
          date: 'December 10, 2026',
        ),
      ],
    );
  }
}
