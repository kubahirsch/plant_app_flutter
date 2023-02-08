import 'package:flutter/material.dart';

class CustomNavigationTab extends StatelessWidget {
  final String text;
  final bool? isActive;
  final VoidCallback onTap;

  const CustomNavigationTab({
    super.key,
    required this.text,
    this.isActive = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(color: isActive! ? Colors.green : Colors.black),
            ),
            isActive!
                ? Container(
                    height: 3,
                    width: 100,
                    color: Colors.green,
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
