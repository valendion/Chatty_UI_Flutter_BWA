import 'package:chatty_bwa/theme.dart';
import 'package:chatty_bwa/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: greenColor,
        child: Icon(Icons.add, size: 20,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/profile_pic.png',
                height: 100,
                width: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Sabrina Carpenter',
                style: textTitleStyleProfile,
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Travel Freelancer',
                style: textSubTitleStyleProfile,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Friends',
                      style: textTitleStyle,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/friend1.png',
                      name: 'Joshuer',
                      text: 'Sorry, you’re not my ty...',
                      time: 'Now',
                      unread: true,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/friend2.png',
                      name: 'Gabriella',
                      text: 'I saw it clearly and mig...',
                      time: '2:30',
                      unread: false,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Groups',
                      style: textTitleStyle,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/group1.png',
                      name: 'Jakarta Fair',
                      text: 'Why does everyone ca...',
                      time: '11:11',
                      unread: false,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/group2.png',
                      name: 'Angga',
                      text: 'Here here we can go...',
                      time: '7:11',
                      unread: true,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/group3.png',
                      name: 'Bentley',
                      text: 'The car which does not...',
                      time: '7:11',
                      unread: true,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
