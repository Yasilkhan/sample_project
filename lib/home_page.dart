import 'package:flutter/material.dart';
var w;
var h;
Color primery=Colors.deepOrange;
Color secondrycolour=Colors.grey.shade50;
Color white=Colors.white;
Color black=Colors.black54;
Color hedding=Colors.grey;
Color selection1=Colors.orange.shade400;
Color selection2=Colors.blue.shade50;
Color selection3=Colors.red.shade200;



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    h=MediaQuery.of(context).size.height;
    w=MediaQuery.of(context).size.width;
    return Scaffold(

backgroundColor: primery,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                child:
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/gshok-removebg-preview.png",),
                    ),
                  ),
                ),

              ),

              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(30),
                  width: w*1,
                  decoration: BoxDecoration(


                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                      color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        spreadRadius: 2,
                        offset: Offset(0,5),
                      )
                    ]
                  ),
                  child:

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Analog Watch",style: TextStyle(fontWeight:FontWeight.bold ,fontSize: 20),),
                      SizedBox(height: w*0.03,),
                      Text("G-Shok 1102",style: TextStyle(color: hedding),),
                      SizedBox(height: w*0.03,),
                      Row(
                        children: [
                          Container(
                            height: w*0.11,
                            width: w*0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: selection1,
                            ),
                            child: Center(child: Text("Orenge")),
                          ),
                          SizedBox(width: w*0.03),
                          Container(
                            height: w*0.11,
                            width: w*0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: selection2,
                            ),
                            child: Center(child: Text("Blue")),
                          ),
                          SizedBox(width: w*0.03),
                          Container(
                            height: w*0.11,
                            width: w*0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: selection3,
                            ),
                            child: Center(child: Text("Red",)),
                          ),
                        ],
                      ),
                      SizedBox(height: w*0.06,),
                      Text("Size",style: TextStyle(color: hedding),),
                      SizedBox(height: w*0.06,),
                      Row(
                        children: [
                          SizeSelection(
                                (){
                              print("S");
                            },
                            Text("S"),
                          ),
                          SizeSelection(
                                  (){
                                print("M");
                              },
                              Text("M")
                          ),
                          SizeSelection(
                                (){
                              print("L");
                            },
                            Text("L"),
                          ),
                          SizeSelection(
                                (){
                              print("XL");
                            },
                            Text("XL"),
                          ),
                          SizeSelection(
                                (){
                              print("XXL");
                            },
                            Text("XXL"),
                          ),
                        ],
                      ),
                      SizedBox(height: w*0.06,),
                      Text("Colors",style: TextStyle(color: hedding),),
                      SizedBox(height: w*0.06,),
                      Row(

                        children: [
                          Container(
                            height: w*0.05,
                            width: w*0.05,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.deepOrange
                            ),
                          ),
                          SizedBox(width:w*0.06),
                          Container(
                            height: w*0.05,
                            width: w*0.05,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue
                            ),
                          ),
                          SizedBox(width:w*0.06),

                          Container(
                            height: w*0.05,
                            width: w*0.05,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red
                            ),
                          ),
                          SizedBox(width:w*0.06),

                          Container(
                            height: w*0.05,
                            width: w*0.05,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
          Positioned(
            left: w*0.83,
              bottom: w*0.05,
              top: w*0.04,

              child:
              Container(
                height: w*0.13,
                width: w*0.13,
                decoration:BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle

                ) ,
                child: Center(child: Icon(Icons.favorite,color: Colors.red,)),
              )
          )

        ],
      ),
    );
  }
}
Widget SizeSelection(Function onPress,Text text){
  return Padding(padding:EdgeInsets.only(left: w*0.03),
    child: InkWell(
      onTap: () {
        onPress();
      },
      child: Container(
        height: w*0.12,
        width: w*0.12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: secondrycolour,
        ),child: Center(child: text),
      ),
    ),

  );
}
