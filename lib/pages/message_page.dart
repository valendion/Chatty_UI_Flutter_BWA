import 'package:chatty_bwa/theme.dart';
import 'package:chatty_bwa/widgets/friend_chat.dart';
import 'package:chatty_bwa/widgets/me_chat.dart';
import 'package:chatty_bwa/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';


class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white2Color,
        body: FooterLayout(
          child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                    children: [
                      TopBar(),
                      FriendChat(
                          imageUrl: 'assets/images/friend1.png',
                          message: 'How are ya guys?',
                          time: '2:30'),
                      FriendChat(
                          imageUrl: 'assets/images/friend2.png',
                          message: 'Find here :P',
                          time: '3:11'),
                      MeChat(
                          imageUrl: 'assets/images/friend4.png',
                          message:
                          'Thinking about how to deal \nwith this client from hell...',
                          time: '22:08'),
                      FriendChat(
                          imageUrl: 'assets/images/friend2.png',
                          message: 'Love them',
                          time: '23:11'),
                    ]),
              )),
          footer: Padding(
            padding: const EdgeInsets.all(30),
            child: TextField(
              decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/btn_send.png',
                        width: 35,
                        height: 35,
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  filled: true,
                  hintText: 'Type message ...',
                  fillColor: whiteColor),
            ),
          ),
        )
    );
  }
}
