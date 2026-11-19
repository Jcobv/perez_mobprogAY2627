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
          date: 'December 2',
        ),
      ],
    );
  }
}
