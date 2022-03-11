import 'package:flutter/material.dart';

import '../theme.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(40))),
      child: Row(
        children: [
          Image.asset(
            'assets/images/group1.png',
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
                'Jakarta Fair',
                style: textTitleStyle,
              ),
              Text(
                '14,209 members',
                style: textSubtitleStyle,
              ),
            ],
          ),
          Spacer(),
          Image.asset(
            'assets/images/btn_call.png',
            height: 55,
            width: 55,
          )
        ],
      ),
    );
  }
}
