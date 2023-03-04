import 'package:flutter/material.dart';
import 'package:zielonepogotowie/logged_in_scaffold.dart';
import 'package:zielonepogotowie/pages/signup_page.dart';
import 'package:zielonepogotowie/utils/utils.dart';

import '../resources/auth_methods.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoading = false;

  void signIn({required String email, required String password}) async {
    setState(() {
      isLoading = true;
    });

    String res = await AuthMethods().SignIn(
      email: email,
      password: password,
    );

    setState(() {
      isLoading = false;
    });

    if (res == 'success') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const LoggedInScaffold(),
      ));
    } else {
      showSnackBar(res, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    @override
    void dispose() {
      emailController.dispose();
      passwordController.dispose();
      super.dispose();
    }

    return isLoading
        ? Center(
            child: CircularProgressIndicator(
              color: Colors.green,
            ),
          )
        : Scaffold(
            body: Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 90),
                  const Text(
                    'Ekran logowania',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 30),
                  TextField(controller: emailController),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                  ),
                  const SizedBox(height: 50),
                  InkWell(
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      color: Colors.green,
                      child: const Center(child: Text("Zaloguj się ")),
                    ),
                    onTap: () => signIn(
                        email: emailController.text,
                        password: passwordController.text),
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
