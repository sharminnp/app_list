import 'package:app_list_machine_test/view/loginscreen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  Future<void> navigateToHome(BuildContext context) async {
    await Future.delayed(Duration(seconds: 4));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    navigateToHome(context);
    return Scaffold(
      body: Column(
        children: [
          Image.network(
            "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png",
            height: 100,
          ),
          Text("Welcome sharmin"),
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmNCu5hg6HNHdFdXzSy1VX62TlNtNSIoZR6A&usqp=CAU",
            // height: 500,
          ),
        ],
      ),
    );
  }
}
