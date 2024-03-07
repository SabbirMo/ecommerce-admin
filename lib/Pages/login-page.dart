
import 'package:e_commerce/Pages/home_page.dart';
import 'package:e_commerce/Pages/signup_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/Buttons/login_button.dart';
import 'package:e_commerce/Buttons/button.dart';
import 'package:e_commerce/TextField/email_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _email = TextEditingController();
  final _password = TextEditingController();

  
  
 
   
   // Error Message
   _showErrorModalBottomSheet(context) {
      showModalBottomSheet(
          shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20)
          )
        ),
           context: context,
           builder: (context) {
             return Container(
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 25),
                 child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                    const Icon(Icons.close_rounded,
                    size: 140,
                    color: Color.fromARGB(235, 215, 4, 4)
                    ),
                    const Text(
                      "Check Email & Password",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 35),
                    Button(
                      text: "Done", 
                      press: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                 ),
               )
             );
           },
       );
  }
  
    // Login Succesful
     _showModalBottomSheet(context) {
      showModalBottomSheet(
          shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20)
          )
        ),
           context: context,
           builder: (context) {
             return Container(
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 25),
                 child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                    const Icon(Icons.check_circle_outline_rounded,
                    size: 140,
                    color: Color.fromARGB(236, 4, 67, 215)
                    ),
                    const Text(
                      "Login Succesful!",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    const SizedBox(height: 35),
                    Button(
                      text: "Done", 
                      press: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => const HomePage())
                        );
                      },
                    ),
                  ],
                 ),
               )
             );
           },
       );
  }


    void _showBottomSheet(context) {
      showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20)
          )
        ),
        isScrollControlled: true,
        context: context, 
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height*0.85,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     const Text(
                      "Login with Email",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.normal
                      ),
                      ),
                  IconButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    }, 
                    icon: const Icon(
                    Icons.close,
                    size: 28,
                    ),
                    ),
                   ],
                 ),
                 const SizedBox(height: 25),
                 //Email id Text Field
                  EmailTextField(
                  hintText: "Email Id",
                  icon: Icons.email_outlined,
                  controller: _email,
                 ),

                 const SizedBox(height: 15),
                 //PassWord text Field
                 EmailTextField(
                  hintText: "Password",
                  icon: Icons.lock_open_outlined,
                  controller: _password,
                  passwordInvisible: true,
                 ),
                 TextButton(
                  onPressed: (){}, 
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Button(
                  text: "Login", 
                  press: () {
                    _showModalBottomSheet(context);
                    
                  },
                  ),
                ],
              ),
            ),
          );
        }
      );
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
       child: SingleChildScrollView(
         child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Login to Shoply",
                style: TextStyle(
                  fontSize: 27.0,
                  fontWeight: FontWeight.w500
                ),
              ),
             const SizedBox(height: 35),
              //Login Button Google
              const LoginButton(
                text: "Login with Google",
                icon: FontAwesomeIcons.google,
              ),
             const SizedBox(height: 18),
              //Login Button Facebook
             const LoginButton(
                text: "Login with Facebook",
                icon: FontAwesomeIcons.facebook,
              ),
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.5),
                      child: Text(
                        "OR"
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 35),
              //Login button Email
              Button(
                text: "Login with Email",
                press: () =>_showBottomSheet(context),
              ),
              const SizedBox(height: 290),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account yet?",
                    style: TextStyle(
                      fontSize: 16
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const SignUpPage())
                      );
                    }, 
                    child: const Text(
                      "Signup",
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.underline
                      ),
                    ),
                  ),
                ],
              ),
             ],
            ),
         ),
       ),
      ),
    );
  }
}