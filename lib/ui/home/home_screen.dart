import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram_clone/ui/calls/calls_screen.dart';
import 'package:telegram_clone/ui/chats/chats_screen.dart';
import 'package:telegram_clone/ui/contacts/contacts_screen.dart';
import 'package:telegram_clone/ui/utils/images/app_images.dart';

import '../settings/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedScreen = 0;

  List screen = [];

  @override
  void initState() {
    screen.add(const ContactsScreen());
    screen.add(const CallsScreen());
    screen.add(const ChatsScreen());
    screen.add(const SettingsScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedScreen],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: SizedBox(height: 24, width: 24,child: SvgPicture.asset(AppImages.contacts),), label: "Contacts"),
          BottomNavigationBarItem(icon: SizedBox(height: 24, width: 24,child: SvgPicture.asset(AppImages.calls),), label: "Calls"),
          BottomNavigationBarItem(icon: SizedBox(height: 24, width: 24,child: SvgPicture.asset(AppImages.chats),), label: "Chats"),
          BottomNavigationBarItem(icon: SizedBox(height: 24, width: 24,child: Image.asset(AppImages.profile),), label: "Settings"),
        ],
        onTap: (v){
          setState(() {
            selectedScreen = v;
          });
        },
      ),
    );
  }
}
