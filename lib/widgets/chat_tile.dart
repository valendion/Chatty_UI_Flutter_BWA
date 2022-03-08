import 'package:chatty_bwa/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatTile(
      {required this.imageUrl,
      required this.name,
      required this.text,
      required this.time,
      required this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            height: 55,
            width: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: textTitleStyle,
              ),
              Text(
                text,
                style: (unread)
                    ? textSubtitleStyle.copyWith(color: blackColor)
                    : textSubtitleStyle,
              )
            ],
          ),
          Spacer(),
          Text(
            time,
            style: textSubtitleStyle,
          )
        ],
      ),
    );
  }
}
