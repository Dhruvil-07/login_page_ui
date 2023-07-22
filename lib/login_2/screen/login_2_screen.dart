import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/text.dart';

class login_2_screen extends StatefulWidget {
  const login_2_screen({Key? key}) : super(key: key);

  @override
  State<login_2_screen> createState() => _login_2_screenState();
}

class _login_2_screenState extends State<login_2_screen> {

  //for sow and hide pasword
  bool show = true;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    //for getting size of screen
    bool widthsize = width > 600;

    print(height);

    return Scaffold(

      body:Container(
          height: height,
          width: width,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                  children: [

                    Container(
                      height: widthsize ? height / 2 + 100 : height /2 + 25,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/background.png" ,),
                            fit: BoxFit.fill,
                          )
                      ),
                      child: Stack(
                        children: [


                          //light 1
                          Positioned(
                            left: 25.w,
                            width: 80.spMax,
                              height: height / 4,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/light-1.png" ,),
                                    fit: BoxFit.contain,
                                  )
                                ),
                              )
                          ),

                          //light 2
                       Positioned(
                                left: widthsize ?  (width / 2 - 90).spMin : (width / 2 - 45).spMin ,
                                width: 80.spMax,
                                height: height / 5.5,
                                child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("assets/images/light-2.png"),
                                          fit: BoxFit.contain,
                                        ),
                                    ),
                                  ),
                            ),


                          //clock
                          Positioned(
                            top: widthsize ? 40.0 : 25.0,
                            right: 40.w,
                            width: widthsize ? 100.0 : 50.0,
                            height: widthsize ? 100.0 : 50.0,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/clock.png"),
                                    fit: BoxFit.contain,
                                  ),
                              ),
                            ),
                          ),


                          //login text
                          Positioned(
                            top: widthsize ? height / 4 : height /4.3 ,
                              left: widthsize ?  (width / 2 - 90).spMin : (width / 2 - 45).spMin ,
                            child: Center(
                              child: algeriya_text(
                                containt: "Login",
                                fontsize: widthsize ? 60.0  : 30.0 ,
                              ),
                            )
                          ),



                        ],
                      ),
                    ),

                   SizedBox(height: 40.h,),

                    //email and phone number
                    Padding(
                      padding:  EdgeInsets.symmetric(
                        horizontal: 25.w,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.spMin)),
                          ),
                          hintText: "Email or Phone Number",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(20.spMin)),
                          ),
                        ),
                        cursorColor: Colors.black,
                      ),
                    ),

                    //password
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25.w,
                        vertical: 25.h,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.spMin)),
                          ),
                          hintText: "Password",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(20.spMin)),
                          ),
                          suffixIcon: IconButton(
                            onPressed: (){
                              setState(() {
                                show = !show;
                              }); },
                            icon: Icon(
                              show == true ? Icons.remove_red_eye_rounded :
                              Icons.security_sharp,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        cursorColor: Colors.black,
                      ),
                    ),


                    SizedBox(height: 25.0,),

                    //login button
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurpleAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          )
                        ),
                        onPressed: (){},
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 70.w,
                            vertical: 4.h,
                          ),
                          child: cario_text(
                            containt: "Login",
                            fontsize: widthsize ? 25.0 : 20.0,
                          ),
                        )
                    ),

                    SizedBox(height: widthsize ? 50.0 : 20.0),

                    //forgot password button
                    TextButton(
                        onPressed: (){},
                        child: cario_text(
                          containt: "Forget Passwrod ?",
                          fontcolor: Colors.deepPurple.shade200,
                          fontsize: widthsize ? 20.0 : 15.0,
                        )
                    ),



                  ],
                ),
            ),
          ),
        ),

    );
  }
}



