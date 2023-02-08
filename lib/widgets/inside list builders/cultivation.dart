import 'package:flutter/material.dart';

class CultivationTab extends StatelessWidget {
  final String cultivationName;
  final String imgUrl;
  final bool isActive;

  const CultivationTab({
    super.key,
    required this.cultivationName,
    required this.imgUrl,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color:
                isActive ? const Color.fromARGB(255, 44, 167, 49) : Colors.grey,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                foregroundImage: NetworkImage(imgUrl),
                radius: 30,
              ),
            ),
            Text(
              cultivationName,
              style: const TextStyle(fontSize: 13),
            ),
            VerticalDivider(
              width: 30,
              thickness: 1,
              color: isActive
                  ? const Color.fromARGB(255, 44, 167, 49)
                  : Colors.grey,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Świetna robota!',
                  style: TextStyle(fontSize: 10),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Wykonałeś wszystkie',
                  style: TextStyle(fontSize: 10),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Zadania dla tej uprawy',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
            IconButton(
              padding: const EdgeInsets.only(bottom: 30),
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_right,
                size: 60,
              ),
            )
          ],
        ),
      ),
    );
  }
}
