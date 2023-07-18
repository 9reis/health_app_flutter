import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('He, Jane'),
            Text(
              'How are you feeling today?',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Ionicons.notifications_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Ionicons.search_outline),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(14),
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Ionicons.home_outline), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.calendar_outline), label: 'Calendar'),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.chatbubble_ellipses_outline), label: 'Chats'),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}
