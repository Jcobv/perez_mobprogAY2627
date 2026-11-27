import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import 'custom_text.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final bool hasImage;
  final String? imagePath;
  final String? profileImagePath;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    this.numOfLikes = 0,
    this.hasImage = false,
    this.imagePath,
    this.profileImagePath,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: ScreenUtil().setSp(15),
                  backgroundImage: AssetImage(
                    profileImagePath ?? 'assets/images/Papoy.jpg',
                  ),
                ),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(3)),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: ScreenUtil().setSp(15),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            // Post Content
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            hasImage
                ? (imagePath != null
                      ? Image.asset(
                          imagePath!,
                          width: double.infinity,
                          height: ScreenUtil().setHeight(180),
                          fit: BoxFit.cover,
                        )
                      : Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                          width: double.infinity,
                          height: ScreenUtil().setHeight(180),
                          fit: BoxFit.cover,
                        ))
                : const SizedBox.shrink(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ActionButton(
                  icon: Icons.thumb_up,
                  label: numOfLikes.toString(),
                  onPressed: () {},
                ),
                ActionButton(
                  icon: Icons.comment,
                  label: 'Comment',
                  onPressed: () {},
                ),
                ActionButton(
                  icon: Icons.redo,
                  label: 'Share',
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: ScreenUtil().setSp(15),
                  backgroundImage: AssetImage(
                    profileImagePath ?? 'assets/images/Papoy.jpg',
                  ),
                ),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Container(
                  padding: EdgeInsets.fromLTRB(ScreenUtil().setSp(10), 0, 0, 0),
                  alignment: Alignment.centerLeft,
                  height: ScreenUtil().setHeight(25),
                  width: ScreenUtil().setWidth(330),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(
                      Radius.circular(ScreenUtil().setSp(10)),
                    ),
                  ),
                  child: CustomText(
                    text: 'Write a comment...',
                    fontSize: ScreenUtil().setSp(11),
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomText(
              text: 'View comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const ActionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: FB_DARK_PRIMARY),
      label: CustomText(
        text: label,
        fontSize: ScreenUtil().setSp(12),
        color: FB_DARK_PRIMARY,
      ),
    );
  }
}
