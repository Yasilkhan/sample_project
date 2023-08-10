import 'package:flutter/material.dart';
import 'package:sample_project/home_page.dart';
import 'package:sample_project/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((value) =>
        Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primery,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.location_on,size: w*0.35,color: white,),
          SizedBox(height: w*0.03,),
          Text("Vision Go"),
        ],
      ),
    );
  }
}
