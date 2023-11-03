import 'package:flutter/material.dart';
import 'package:zeitoun/colors.dart';
import 'package:zeitoun/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

final emailController = TextEditingController();
final passwordController = TextEditingController();

 bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Image.asset(
                "assets/images/logo.png",
                height: 200,
                width: 200,
              ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => openLoginScreen(),
              style: ElevatedButton.styleFrom(
                  backgroundColor: mainColor,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(5)))),
              child: Text("تسجيل الدخول",
                style: TextStyle(color: Colors.white,fontSize: 20),),

            ),
          ),
        ),
        SizedBox(height: 10,),

        Padding(
          padding: const EdgeInsets.all(12),
          child: SizedBox(
          width: double.infinity,
    child:
          ElevatedButton(
            onPressed: () {},
            child: Text("إنشاء حساب",
              style: TextStyle(color: mainColor,fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(5)))),
          ),
        ),
        ),
      ],),

    );
  }

  openLoginScreen() {
    Navigator.push(
        context, MaterialPageRoute(
        builder: (context)=> LogInScreen(),
    ));

  }
}
