import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: const [Text("This is the register screen")]),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.lightBlueAccent,
        items: const <Widget>[
          Icon(Icons.login, size: 30),
          Icon(Icons.manage_accounts_sharp, size: 30),
        ],
        onTap: (index) {},
      ),
    );
  }
}
