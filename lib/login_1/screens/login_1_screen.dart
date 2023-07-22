import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_pages_ui/widget/text.dart';

class login_1_screen extends StatefulWidget {
  const login_1_screen({Key? key}) : super(key: key);

  @override
  State<login_1_screen> createState() => _login_1_screenState();
}

class _login_1_screenState extends State<login_1_screen> {

  //for password show and hide
  bool show = true;

  @override
  Widget build(BuildContext context) {

    //height ans width of container
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    //for width size
    bool widthsize = width > 600;


    return  Scaffold(
        body: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange.shade800 ,  Colors.orange.shade500 , Colors.orange.shade200],
                  begin: Alignment.centerLeft, end: Alignment.centerRight
                )
              ),
             child:  Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [

                   SizedBox(height: widthsize ? 100.0 : 110.0),

                   Padding(
                     padding: EdgeInsets.symmetric(
                       horizontal: 20.w,
                     ),
                     child: algeriya_text(
                         containt: "Login",
                         fontsize: widthsize ? 90.0 : 50.0,
                     ),
                   ),

                   SizedBox(height: 4.h,),

                   Padding(
                     padding: EdgeInsets.symmetric(
                       horizontal: 20.w,
                     ),
                     child: algeriya_text(
                         containt: "Welcome Back",
                       fontsize: widthsize ? 30.0 : 20.0,
                     ),
                   ),


                   SizedBox(height: 48.h,),

                   //input lauout design
                   Expanded(
                     child: Container(
                          decoration:  BoxDecoration(
                              color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(70.spMax),
                              topLeft: Radius.circular(70.spMax),
                            ),
                          ),
                         child: SafeArea(
                           child: SingleChildScrollView(
                             
                             child: Column(
                                 children: [

                                    SizedBox(height: widthsize ? 130.0 : 30.0),

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

                                   //forget password button
                                   TextButton(
                                       onPressed: (){},
                                       child: cario_text(
                                         containt: "Forget Passwrod ?",
                                         fontcolor: Colors.black.withOpacity(0.6),
                                         fontsize: widthsize ? 20.0 : 15.0,
                                       )
                                   ),

                                    SizedBox(height: 32.h,),

                                   //login button
                                   ElevatedButton(
                                       style: ElevatedButton.styleFrom(
                                         backgroundColor: Colors.orange.shade500,
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
                                   
                                   SizedBox(height: widthsize ? 50.h : 40.0),

                                   //suggestion text
                                   cario_text(
                                       containt: "Continue With Social Media",
                                       fontcolor: Colors.black.withOpacity(0.5),
                                     fontsize: widthsize ? 20.0 : 17.0,
                                   ),

                                   //row of social media button
                                   Padding(
                                     padding: EdgeInsets.symmetric(
                                       horizontal: 12.w,
                                       vertical: 24.h,
                                     ),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                       children: [

                                         Expanded(
                                           child: ElevatedButton(
                                                 style: ElevatedButton.styleFrom(
                                                   backgroundColor: Colors.blue.shade500,
                                                 ),
                                                 onPressed: (){},
                                                 child: Padding(
                                                   padding:  EdgeInsets.symmetric(
                                                     vertical: 4.w,
                                                   ),
                                                   child: cario_text(
                                                       containt: "Facebook",
                                                       fontsize: widthsize ? 25.0 : 20.0,
                                                     ),
                                                 ),
                                             ),
                                         ),

                                          SizedBox(width: 24.w,),

                                          Expanded(
                                            child: ElevatedButton(
                                               style: ElevatedButton.styleFrom(
                                                 backgroundColor: Colors.black,
                                               ),
                                               onPressed: (){},
                                               child:  Padding(
                                                 padding: EdgeInsets.symmetric(
                                                   vertical: 4.h,
                                                 ),
                                                 child: cario_text(
                                                     containt: "Github",
                                                     fontsize: widthsize ? 25.0 : 20.0,
                                                   ),
                                               ),
                                         ),
                                          ),


                                       ],
                                     ),
                                   )


                                 ],
                               ),
                           ),
                       ),
                   ),

                   )
            ],
               ),
            ),
      );
  }
}
