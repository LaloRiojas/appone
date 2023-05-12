import 'package:appone/constants.dart';
import 'package:appone/pages/homescreen.dart';
import 'package:appone/pages/registerscreen.dart';
import 'package:flutter/material.dart';

List<Widget> login(BuildContext context) {
  List<Widget> result = List.empty(growable: true);
  Image logo = Image.asset('lib/images/logo.png');
  double imagewidth = 0;
  logo.image
      .resolve(const ImageConfiguration())
      .addListener(ImageStreamListener((ImageInfo im, bool __) {
    imagewidth = im.image.width.toDouble();
  }));
  result.addAll([
    logo,
    Text("image width is $imagewidth"),
  ]);
  Widget username;
  Widget password;
  username = ConstrainedBox(
    constraints: BoxConstraints(maxWidth: imagewidth, maxHeight: 50),
    child: Container(
        margin: const EdgeInsets.all(10.0),
        child: const TextField(
          decoration: InputDecoration(
            hintText: 'Username',
          ),
        )),
  );
  password = ConstrainedBox(
    constraints: BoxConstraints(maxWidth: imagewidth, maxHeight: 50),
    child: Container(
      margin: const EdgeInsets.all(10.0),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Password',
        ),
      ),
    ),
  );
  Widget LoginButton;
  LoginButton = ConstrainedBox(
    constraints: BoxConstraints(maxWidth: imagewidth, maxHeight: 50),
    child: Container(
      margin: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Homescreen()));
        },
        child: const Text('Login'),
      ),
    ),
  );

  Widget RegisterButton;
  RegisterButton = ConstrainedBox(
    constraints: BoxConstraints(maxWidth: imagewidth, maxHeight: 50),
    child: Container(
      margin: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const RegisterScreen()));
        },
        child: const Text('Register'),
      ),
    ),
  );
  Row buttonRow = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [RegisterButton, LoginButton],
  );
  Widget signin = Expanded(
      child: Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: secondarycolor),
    child: Column(children: [username, password, buttonRow]),
  ));
  result.add(signin);

  return result;
}
