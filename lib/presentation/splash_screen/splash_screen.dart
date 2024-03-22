import 'dart:async';

import 'package:derivers_app/presentation/auth/signup_screen/signup_screen.dart';
import 'package:derivers_app/presentation/navbar/navbar_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen>
{

  startTimer()
  {
    Timer(const Duration(seconds: 3), () async
    {

      // if(await fAuth.currentUser != null)
      // {
      //   currentFirebaseUser = fAuth.currentUser;
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (c)=> const SignUpScreen()));
      // }
      // else
      // {
      //   Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginScreen()));
      // }
    });
  }


  @override
  void initState() {
    super.initState();
    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset("images/logo1.png"),
              const SizedBox(height: 10,),

              const Text(
                "Uber & inDriver Clone App",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
