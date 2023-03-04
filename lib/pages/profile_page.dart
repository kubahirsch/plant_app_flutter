import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zielonepogotowie/pages/login_page.dart';
import 'package:zielonepogotowie/providers/user_provider.dart';
import 'package:zielonepogotowie/resources/auth_methods.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> user =
        Provider.of<UserProvider>(context).getUserSnapAsMap!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          user['username'],
        ),
      ),
      body: Center(
          child: InkWell(
        onTap: () {
          AuthMethods().signOut();
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => const LoginPage()));
        },
        child: Container(
          decoration: const BoxDecoration(color: Colors.green),
          width: 200,
          height: 40,
          child: const Center(child: Text('Wyloguj się ')),
        ),
      )),
    );
  }
}
