import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../widgets/upcomming_card.dart';
import 'health_needs.dart';
import 'nearby_doctors.dart';

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
        children: [
          //Upcoming card
          UpcomingCard(),
          SizedBox(height: 20),
          Text(
            'Health Needs',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(height: 15),
          // Health needs
          HealthNeeds(),
          SizedBox(height: 30),
          Text('Nearby Doctors',
              style: Theme.of(context).textTheme.headlineSmall),
          SizedBox(height: 15),
          // Nearby Doctors
          NearbyDoctors(),
        ],
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
