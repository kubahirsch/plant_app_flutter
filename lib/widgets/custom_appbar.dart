import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: const Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        child: CircleAvatar(
          radius: 48,
          foregroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
        ),
      ),
      actions: const [
        Icon(
          size: 32.0,
          Icons.notifications_outlined,
          color: Colors.black,
        ),
        SizedBox(width: 10),
        Icon(
          size: 32.0,
          Icons.search,
          color: Colors.black,
        ),
      ],
    );
  }
}
