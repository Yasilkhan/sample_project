import 'package:flutter/material.dart';
import 'package:sample_project/signup_page.dart';

import 'home_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {


  TextEditingController email_controller=TextEditingController();
  TextEditingController password_controller=TextEditingController();

  RegExp emailValidator =
               RegExp(r"(^[a-zA-Z0-9_-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)");
  RegExp passwordValidator =
                 RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  bool tape=true;

  @override
  Widget build(BuildContext context) {
    h=MediaQuery.of(context).size.height;
    w=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primery,
      body: Column(
        children: [
          Expanded(
            flex: 3,
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      width: w*1,
                      padding: EdgeInsets.only(right: w*0.3,left: w*0.3,top: w*0.2),
                      child: Icon(Icons.location_on,size: w*0.35,color: white,),
                    ),
                    Center(child: Text("Vison Go",
                      style: TextStyle(
                          fontSize: w*0.08,
                          fontWeight: FontWeight.bold,
                          color: white
                      ),
                     ),
                    ),
                  ],
                ),
              ),
          ),
          Expanded(
            flex: 4,
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),

                child: Container(
                  padding: EdgeInsets.only(left: 30,top: 30,right: 30 ),
                  width: w*1,
                  height: h*1.2,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(w*0.1),
                          topLeft: Radius.circular(w*0.1),
                    ),

                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Login",style: TextStyle(
                          fontSize: w*0.08,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: w*0.03,),
                      Row(
                        children: [
                          Text("You dont have Account",
                            style: TextStyle(fontSize: w*0.04,color: black),

                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
                            },
                            child: Text(" Lets Signin ?",
                              style: TextStyle(color: Colors.red),),
                          )
                        ],
                      ),
                      SizedBox(height: w*0.06,),
                      TextFormField(
                        controller: email_controller,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if(!emailValidator.hasMatch(value!)){
                            return "Enter valied Email";
                          }else{
                            return null;
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(

                            hintText: "Enter Email",
                            labelText: "E_mail",
                            border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(10),
                            )

                        ),
                      ),
                      SizedBox(height: w*0.03,),
                      TextFormField(
                        controller: password_controller,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if(!passwordValidator.hasMatch(value!)){
                            return "Enter valied Email";
                          }else{
                            return null;
                          }
                        },
                        keyboardType: TextInputType.name,
                        maxLength: 8,
                        obscureText: tape==false ? false:true,
                        decoration: InputDecoration(

                            hintText: "Enter password",
                            labelText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          suffixIcon: InkWell(
                            onTap: (){
                              setState(() {
                                tape=!tape;

                              });
                            },
                              child: tape==false? Icon(Icons.visibility):Icon(Icons.visibility_off),
                          )
                        ),
                      ),
                      SizedBox(height: w*0.06,),
                      Center(
                        child: InkWell(
                          onTap: () {
                            if(email_controller.text!=""&& password_controller.text!=""){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                            }else{
                              email_controller.text==""?
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter E mail"))):
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter password")));
                            }
                          },
                          child: Container(
                            height: w*0.15,
                            width: w*0.7,
                            decoration: BoxDecoration(
                              color: primery,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: Text("Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: w*0.045,fontWeight:
                                  FontWeight.bold),
                                )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: w*0.08,),
                      Center(child: Text("Signin or with")),
                      SizedBox(height: w*0.03,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: w*0.1,
                            width: w*0.18,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/Google__G__Logo.svg.webp")),
                              borderRadius: BorderRadius.circular(w*0.04),
                              color: white,
                            ),
                          ),
                          SizedBox(width: w*0.03,),
                          Container(
                            height: w*0.1,
                            width: w*0.18,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/facebooklogo.png")),
                              borderRadius: BorderRadius.circular(w*0.04),
                              color: white,

                            ),

                          ),
                          SizedBox(width: w*0.03,),
                          Container(
                            height: w*0.1,
                            width: w*0.18,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/twitterlogo-removebg-preview.png")),
                              borderRadius: BorderRadius.circular(w*0.04),
                              color: white,
                            ),
                          ),
                        ],
                      )

                    ],
                  ),

                ),
              )
          ),
        ],
      ),

    );
  }
}
