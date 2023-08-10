import 'package:flutter/material.dart';
import 'package:sample_project/home_page.dart';
import 'package:sample_project/login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController email_controller=TextEditingController();
  TextEditingController password_controller=TextEditingController();

  RegExp emailValidator = RegExp(r"(^[a-zA-Z0-9_-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)");
  RegExp passwordValidator =RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  
  bool tape=true;
  bool check=true;
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
            child:
            Container(
              height: w*1,
              decoration: BoxDecoration(
                image:DecorationImage(image: AssetImage("assets/watchicon__2_-removebg-preview.png")),
              ),

          ),

          ),
          Expanded(
            flex: 3,
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),

                child: Container(
                  width: w*1,
                  height: w*1.2,
                  padding: EdgeInsets.only(left: 30,top: 30,right: 30),

                  decoration: BoxDecoration(
                    color: white,
                     borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sign Up",style: TextStyle(fontSize: w*0.08,fontWeight: FontWeight.bold),),
                      SizedBox(height: w*0.03,),
                      Text("You dont have Account",style: TextStyle(fontSize: w*0.04,color: black),),
                      SizedBox(height: w*0.03,),

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
                          suffixIcon: Icon(Icons.check),
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
                      SizedBox(height: w*0.0,),
                      Row(
                        children: [
                          Checkbox(value: check,
                            onChanged: (value) {
                            setState(() {
                              check=value!;
                            });
                          },
                          ),
                          SizedBox(width: w*0.02,),
                          Text("Are you ready"),
                        ],
                      ),
                      SizedBox(height: w*0.03,),
                      Center(
                        child: InkWell(
                          onTap: () {
                            if(email_controller.text!=""&& password_controller.text!=""){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
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
                                child: Text("Signin",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: w*0.045,fontWeight:
                                            FontWeight.bold),
                                )
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              )

          )
        ],
      ),

    );
  }
}
