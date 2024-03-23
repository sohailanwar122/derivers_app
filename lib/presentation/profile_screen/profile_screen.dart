import 'package:derivers_app/global/global.dart';
import 'package:derivers_app/presentation/auth/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //name
            // Text(
            //   onlineDriverData.name!,
            //   style: const TextStyle(
            //     fontSize: 50.0,
            //     color: Colors.white,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),


            // Text(
            //   titleStarsRating + " driver",
            //   style: const TextStyle(
            //     fontSize: 18.0,
            //     color: Colors.grey,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),

            // const SizedBox(
            //   height: 20,
            //   width: 200,
            //   child: Divider(
            //     color: Colors.white,
            //     height: 2,
            //     thickness: 2,
            //   ),
            // ),

            const SizedBox(height: 38.0,),

            //phone
            // InfoDesignUIWidget(
            //   textInfo: onlineDriverData.phone!,
            //   iconData: Icons.phone_iphone,
            // ),

            //email
            // InfoDesignUIWidget(
            //   textInfo: onlineDriverData.email!,
            //   iconData: Icons.email,
            // ),

            // InfoDesignUIWidget(
            //   textInfo: onlineDriverData.car_color! + " " + onlineDriverData.car_model! + " " +  onlineDriverData.car_number!,
            //   iconData: Icons.car_repair,
            // ),

            // const SizedBox(
            //   height: 20,
            // ),

            ElevatedButton(
              onPressed: ()
              {
                fAuth.signOut();
                // SystemNavigator.pop();
                Navigator.push(context, MaterialPageRoute(builder: (c)=> const LoginScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
              ),
              child: const Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
            )

          ],
        ),
      ),
    );
  }
}
