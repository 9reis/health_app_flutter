import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class UpcomingCard extends StatelessWidget {
  const UpcomingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      padding: EdgeInsets.symmetric(vertical: 22, horizontal: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/doctor_2.jpg', width: 45),
          ),
          SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  'Dr. Winner Balard',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Text(
                'Dental Specialist',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 18),
              Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: const [
                    Icon(Ionicons.calendar_outline,
                        size: 18, color: Colors.white),
                    Padding(
                      padding: EdgeInsets.only(right: 14, left: 6),
                      child: Text(
                        'Today',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Icon(
                        Ionicons.time_outline,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '14:30 0 15:30',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
