import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medical/Login.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  register() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passController.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SizedBox(
                height: 200,
                child: Image.asset("assets/logo.png"),
              ),
            ),
            const Text(
              "Please Enter your email",
              style: TextStyle(color: Colors.grey),
            ),
            const Text(""),
            SizedBox(
              width: 300,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelText: 'Email',
                ),
              ),
            ),
            const Text(""),
            const Text(
              "Please Enter your Passwaord",
              style: TextStyle(color: Colors.grey),
            ),
            const Text(""),
            SizedBox(
              width: 300,
              child: TextField(
                controller: passController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
            const Text(""),
            SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () async{
                      Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginView()),
                          
                    );
                    await register();
                  },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue),
                    child: const Text("CONTINUE",style: TextStyle(color: Colors.white),))),
                    const Text(""),
          ],
        ),
      ),
    );
  }
}