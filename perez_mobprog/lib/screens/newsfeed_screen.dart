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
          postContent: 'Merry Christmas',
          numOfLikes: 7,
          date: 'November 20, 2026',
        ),
        NewsFeedCard(
          userName: 'Ron Jacob Perez',
          postContent: 'Wabalabadabdab',
          numOfLikes: 200,
          hasImage: true,
          date: 'November 2, 2026',
        ),
        NewsFeedCard(
          userName: 'Ron Jacob Perez',
          postContent: 'Studying Flutter tonight',
          numOfLikes: 15,
          date: 'November 3, 2026',
        ),
        NewsFeedCard(
          userName: 'Ron Jacob Perez',
          postContent: 'Look at this owl',
          numOfLikes: 98,
          hasImage: true,
          date: 'November 4, 2026',
        ),
        NewsFeedCard(
          userName: 'Ron Jacob Perez',
          postContent: 'Coffee first, code later',
          numOfLikes: 33,
          date: 'November 5, 2026',
        ),
        NewsFeedCard(
          userName: 'Ron Jacob Perez',
          postContent: 'Lab activity done',
          numOfLikes: 54,
          hasImage: true,
          date: 'November 6, 2026',
        ),
        NewsFeedCard(
          userName: 'Ron Jacob Perez',
          postContent: 'Weekend vibes',
          numOfLikes: 21,
          date: 'December 7, 2026',
        ),
        NewsFeedCard(
          userName: 'Ron Jacob Perez',
          postContent: 'New project idea',
          numOfLikes: 76,
          hasImage: true,
          date: 'December 8, 2026',
        ),
        NewsFeedCard(
          userName: 'Ron Jacob Perez',
          postContent: 'Almost finals week',
          numOfLikes: 12,
          date: 'December 9, 2026',
        ),
        NewsFeedCard(
          userName: 'Ron Jacob Perez',
          postContent: 'Happy holidays everyone',
          numOfLikes: 150,
          hasImage: true,
          date: 'December 10, 2026',
        ),
      ],
    );
  }
}
