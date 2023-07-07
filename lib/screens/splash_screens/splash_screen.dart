import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sch_mgnt_system/constants.dart';
import 'package:sch_mgnt_system/screens/login_screen/login_screen.dart';

class SplashScreen extends StatelessWidget {

static String routeName = 'SplashScreen';
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 5), (){
      Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route) => false);
    } );


    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Text('ExamKit', style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color:kTextWhiteColor,
                fontSize: 50.0,
                fontStyle: FontStyle.italic,
                letterSpacing: 2.0,
              ),),
                Text(
                  'school', style: GoogleFonts.pattaya(
                  fontSize:50,
                  fontStyle: FontStyle.italic,
                  color: kTextWhiteColor,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w700,
                ),
                )
                  ],
            ),
            Image.asset('assets/images/splash.jpg', height: 150,
            width: 150,)
          ],
        ),
      ),
    );
  }
}
