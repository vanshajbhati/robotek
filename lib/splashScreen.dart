import 'package:flutter/material.dart';
import 'package:robotek/selectUser.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
          child:  Image.asset('assets/RobotekLogo.png', width: 180)


      ),
    );
}

  @override
  void initState() {

    // TODO: implement initState
    super.initState();

    startHome();
     
  }
  
  Future<void> startHome() async {
    await Future.delayed(Duration( milliseconds: 2000));

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (Context) => SelectUser()));
  }
}













