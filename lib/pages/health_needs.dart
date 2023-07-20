import 'package:flutter/material.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    List<CustomIcon> customIcons = [
      CustomIcon('assets/appointment.png', 'Appoiment'),
      CustomIcon('assets/hospital.png', 'Hospotal'),
      CustomIcon('assets/virus.png', 'Covid-19'),
      CustomIcon('assets/more.png', 'More'),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(customIcons.length, (index) {
        return Column(
          children: [
            Container(
              width: 60,
              height: 60,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context)
                    .colorScheme
                    .primaryContainer
                    .withOpacity(0.4),
              ),
              child: Image.asset(customIcons[index].icon),
            ),
            SizedBox(height: 6),
            Text(customIcons[index].name),
          ],
        );
      }),
    );
  }
}

class CustomIcon {
  final String icon;
  final String name;

  CustomIcon(this.icon, this.name);
}
