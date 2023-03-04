import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zielonepogotowie/logged_in_scaffold.dart';
import 'package:zielonepogotowie/pages/login_page.dart';
import 'package:zielonepogotowie/resources/auth_methods.dart';

import '../utils/utils.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Uint8List? _image;

  void selectImage() async {
    Uint8List? im = await pickImage(ImageSource.gallery);
    setState(() {
      _image = im;
    });
  }

  void signUp(
      {required String email,
      required String username,
      required String password}) async {
    if (_image == null) {
      showSnackBar('You have to choose an image', context);
    } else {
      String res = await AuthMethods().signUp(
        email: email,
        username: username,
        password: password,
        profilePic: _image!,
      );
      if (res == 'success') {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ));
      } else {
        showSnackBar(res, context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 90),
            const Text(
              'Ekran logowania',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            Stack(
              children: [
                _image == null
                    ? const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/1160/1160040.png?w=826&t=st=1669543531~exp=1669544131~hmac=b37f7fe1a9b98eec74375d3fc5a47621ecaea7ab2aa525a5f3bc89e53afa4532'),
                        radius: 64,
                      )
                    : CircleAvatar(
                        backgroundImage: MemoryImage(_image!),
                        radius: 64,
                      ),
                Positioned(
                  child: IconButton(
                    onPressed: selectImage,
                    icon: const Icon(Icons.add_a_photo),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(hintText: 'username'),
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(hintText: 'email'),
            ),
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(hintText: 'hasło'),
            ),
            const SizedBox(height: 50),
            InkWell(
              child: Container(
                width: double.infinity,
                height: 40,
                color: Colors.green,
                child: const Center(child: Text("Zarejestruj się ")),
              ),
              onTap: () => signUp(
                email: emailController.text,
                password: passwordController.text,
                username: usernameController.text,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const SignUpPage(),
                  ),
                );
              },
              child: const Text('Zarejestruj się'),
            )
          ],
        ),
      ),
    );
  }
}
