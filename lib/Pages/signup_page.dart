import 'package:e_commerce/Buttons/button.dart';
import 'package:e_commerce/Buttons/login_button.dart';
import 'package:e_commerce/Pages/login-page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
    final _formKey = GlobalKey<FormState>();
    final _email = TextEditingController();
    final _password = TextEditingController();
    final _confirmPassword = TextEditingController();
    bool isHidePassword = true;
    bool confirmPass = true;

    //singup Database
  

    //Success 
    _signupSuccessBottomSheet(context){
      showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25)
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
                    "Signup Succesfull!",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(height: 35),
                  Button(
                    text: "Done",
                    press: () {
                    },
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    //Text Field
    _signupShowBottonSheet(context){
      showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25)
          )
        ),
        context: context, 
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.89,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Singup with Email",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.normal
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        }, 
                        icon: const Icon(Icons.close,
                        size: 28,
                        )
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  //Email Id Text Field
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _email,
                          validator: (value) {
                            if(value!.isEmpty){
                              return "Please check Email";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Email Id",
                            prefixIcon: const Icon(Icons.email_outlined)
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextFormField(
                          controller: _password,
                          validator: (value) {
                            if(value!.isEmpty){
                              return "Please Enter the password";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Password",
                            prefixIcon: const Icon(Icons.lock_open_outlined),
                            suffixIcon: InkWell(
                              onTap: () => setState(() {
                                isHidePassword =! isHidePassword;
                              }),
                              child: Icon( isHidePassword?
                                Icons.visibility
                                : Icons.visibility_off
                                ),
                              ),
                          ),
                          obscureText: isHidePassword,
                        ),
                        const SizedBox(height: 15),
                        TextFormField(
                          controller: _confirmPassword,
                          validator: (value) {
                            if(value!.isEmpty){
                              return "Please Enter the password";
                            }
                            if(value != _password.value.text){
                              return "Enter the Same Number";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Confrim-Password",
                            prefixIcon: const Icon(Icons.lock_open_outlined),
                            suffixIcon: InkWell(
                              onTap: () => setState(() {
                                confirmPass =! confirmPass;
                              }),
                              child: Icon( confirmPass?
                                Icons.visibility :
                                Icons.visibility_off
                              ),
                            ),
                          ),
                          obscureText: confirmPass,
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 25),
                  Button(
                    text: "Signup", 
                    press: () {
                      if(_formKey.currentState!.validate()){
                        _signupSuccessBottomSheet(context);
                      }
                    },
                  ),
                ],
              ),
            ),
          );
        },
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
                  "Signup to Shoply",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w500
                  ),
                ),
                const SizedBox(height: 35),
                //Sign up with google
                const LoginButton(
                  text: "Signup with Google", 
                  icon: FontAwesomeIcons.google,
                ),

                const SizedBox(height: 15),
                //Signup with Facebook
                const LoginButton(
                  text: "Signup with Facebook", 
                  icon: FontAwesomeIcons.facebook
                ),
                const SizedBox(height: 35),
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
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        child: Text("OR"),
                      ),
                       Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 35),
                Button(
                  text: "Signup with Email", 
                  press: () {
                    _signupShowBottonSheet(context);
                  },
                ),
                const SizedBox(height: 290),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an Account?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => const LoginPage())
                        );
                      }, 
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}