import 'package:chatty_bwa/theme.dart';
import 'package:flutter/material.dart';

class MeChat extends StatelessWidget {
  final String imageUrl;
  final String message;
  final String time;

  MeChat({required this.imageUrl, required this.message, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message,
                  style: textChat,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  time,
                  style: textTimeChat,
                )
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Image.asset(
            imageUrl,
            height: 40,
            width: 40,
          ),
        ],
      ),
    );
  }
}
