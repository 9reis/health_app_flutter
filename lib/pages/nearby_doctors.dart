import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../models/doctor_model.dart';

class NearbyDoctors extends StatelessWidget {
  const NearbyDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(nearbyDoctors.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(nearbyDoctors[index].profile),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nearbyDoctors[index].name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(nearbyDoctors[index].position),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Ionicons.star, size: 18, color: Colors.yellow),
                      Padding(
                        padding: EdgeInsets.only(left: 4, right: 6),
                        child: Text(
                          nearbyDoctors[index].averageReview.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(nearbyDoctors[index].totalReview.toString() +
                          " Reviews"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
