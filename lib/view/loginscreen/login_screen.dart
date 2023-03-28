import 'package:app_list_machine_test/view/bottomnavbar/bottom_navbar_screen.dart';
import 'package:app_list_machine_test/view/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              "https://assets.stickpng.com/images/593008b13919fe0ee3614dad.png",
              height: 300,
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BottomNavBarScreen()));
              },
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.brown[200],
                ),
                child: Row(
                  children: [
                    Icon(Icons.g_mobiledata),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Sign in with Google")
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: textFieldWidget(hintText: "Email", Icons: Icons.mail_lock),
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child:
                  textFieldWidget(hintText: "Password", Icons: Icons.password),
            ),
            Text("Forget Password")
          ],
        ),
      ),
    );
  }
}
