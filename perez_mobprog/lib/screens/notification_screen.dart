import '../widgets/notification.dart' as notif;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<Map<String, String>> notifs = [
    {
      'name': 'Ron Jacob Perez',
      'post': 'Merry Christmas',
      'description': 'Liked your post',
    },
    {
      'name': 'Tony Stark',
      'post': 'Wabalabadabdab',
      'description': 'Shared your post',
    },
    {
      'name': 'Maria Santos',
      'post': 'Studying Flutter tonight',
      'description': 'Commented on your post',
    },
    {
      'name': 'Hawkeye',
      'post': 'Look at this owl',
      'description': 'Liked your post',
    },
    {
      'name': 'Hulk',
      'post': 'Coffee first, code later',
      'description': 'Liked your post',
    },
    {
      'name': 'Steve Rogers',
      'post': 'Lab activity done',
      'description': 'Commented on your post',
    },
    {
      'name': 'Black Widow',
      'post': 'Weekend vibes',
      'description': 'Liked your post',
    },
    {
      'name': 'Andrew Garfield',
      'post': 'New project idea',
      'description': 'Liked your post',
    },
    {
      'name': 'Miles Morales',
      'post': 'Almost finals week',
      'description': 'Commented on your post',
    },
    {
      'name': 'Daredevil',
      'post': 'Happy holidays everyone',
      'description': 'Liked your post',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.separated(
        itemCount: notifs.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, i) => notif.Notification(
          name: notifs[i]['name']!,
          post: notifs[i]['post']!,
          description: notifs[i]['description']!,
        ),
      ),
    );
  }
}
