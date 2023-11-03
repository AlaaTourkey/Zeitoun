
import 'package:flutter/material.dart';
import 'package:zeitoun/colors.dart';
import 'package:zeitoun/screens/splash_screen2.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {

  bool obscureText = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
              Center(
                child: Text("تسجيل الدخول",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),),
              ),
              Align(
                alignment: Alignment.centerRight,
                  child: Text("البريد الالكتروني",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
               SizedBox(height: 5,),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border : OutlineInputBorder(),
                  ),
                  validator:  (value){
                    if(!value!.contains('@') || !value.contains('.') ){
                      return "برجاء إدخال بريد الكتروني صحيح";
                    }
                    return null;
                  },
                ),
              SizedBox(height: 15,),
              Align(
                alignment: Alignment.centerRight,
                  child: Text("كلمه السر",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                SizedBox(height: 5,),
                TextFormField(
                controller: passwordController,
                obscureText: obscureText,
                decoration: InputDecoration(
                  border : OutlineInputBorder(),
                  prefixIcon: IconButton(
                    onPressed: () {
                      obscureText = !obscureText;
                      setState(() {});
                    },
                    icon: Icon(
                      obscureText ? Icons.visibility_off :
                      Icons.visibility,
                    ),
                  ),
                ),
                validator:  (value){
                 if(value!.length < 6){
                    return "كلمة السر الخاصة بك يجب الا تقل عن 6 حروفِ";
                  }
                  return null;
                },
              ),
                SizedBox(height: 5,),
                Align(
                  alignment: Alignment.centerLeft,
                    child: Text("هل نسيت كلمة السر؟",
                      style: TextStyle(color: forgetPassword),)),
                SizedBox(height: 10,),
                 SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => check(),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: mainColor,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(5)))),
                      child: Text("تسجيل الدخول",
                        style: TextStyle(color: Colors.white,fontSize: 20),),

                    ),
                  ),
                SizedBox(height: 25,),
        Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 1.0,
                    width: 100.0,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  'أو متابعة باستخدام',
                  style: TextStyle(fontSize: 17),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 1.0,
                    width: 100.0,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Image.asset(
                    "assets/images/google.png",
                    height: 30,
                    width: 50,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    //action coe when button is pressed
                  },
                  icon: Icon(Icons.facebook,
                    color: Colors.blue[900],
                    size: 35,
                  ),
                ),

              ],),
                SizedBox(height: 200,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'إنشاء حساب ',
                      style: TextStyle(fontSize: 15,
                          color: mainColor),

                    ),
                    GestureDetector(
                      onTap: () { },
                      child: Text(
                        'ليس لديك حساب؟',
                        style: TextStyle(fontSize: 15.0,
                          color: forgetPassword,
                        ),
                      ),
                    ),
                  ],
                ),
        ],),
          ),
        ),
      ),
    );
  }
  void check(){
    if (!formKey.currentState!.validate()){
      return;
    }
    //if(email == "rahma@gmail.com" && password == "12345"){
   // }
    else{
      print('بيانات المستخدم المدخلة غير موجودة. يرجى المحاولة مرة آخرى');
    }
    Navigator.pop(context);
  }

}
