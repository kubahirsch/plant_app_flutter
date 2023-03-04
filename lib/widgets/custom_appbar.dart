import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zielonepogotowie/providers/user_provider.dart';

import '../pages/profile_page.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? user =
        Provider.of<UserProvider>(context).getUserSnapAsMap;

    if (user == null) {
      return const Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      );
    }

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const ProfilePage(),
          ));
        },
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: CircleAvatar(
            radius: 48,
            foregroundImage: NetworkImage(user['profilePicUrl']),
          ),
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
