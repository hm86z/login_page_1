import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const imgPath = 'assets/images';
  static const primaryColor = Color.fromRGBO(126, 45, 255, 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


               Container(
                 height: MediaQuery.of(context).size.height * 0.45,
                 decoration: const BoxDecoration(
                   image: DecorationImage(
                       image: AssetImage('$imgPath/background.png'),
                       fit: BoxFit.fill
                   )
                 ),
               
                 child: Stack(
                   children: [
                     
                     
                      Positioned(
                          left: 30,
                          width: 80,
                          height: 200,
                          child:
                            FadeInDown(
                              duration: const Duration(milliseconds: 500),
                              child:
                              Image.asset('$imgPath/light_1.png')
                            ),
                      ),
                     
                     
                     Positioned(
                         left: 140,
                         width: 80,
                         height: 150,
                         child: 
                           FadeInDown(
                             duration: const Duration(milliseconds: 700),
                             child: 
                             Image.asset('$imgPath/light_2.png'),
                           ),
                     ),
                     
                     
                     Positioned(
                         right: 40,
                         top: 40,
                         width: 80,
                         height: 150,
                         child: 
                          FadeInDown(
                             duration: const Duration(milliseconds: 900),
                              child: Image.asset('$imgPath/clock.png'),
                          )
                     ),



                     Align(
                       alignment: Alignment.center,
                       child: FadeInDown(
                          duration: const Duration(milliseconds: 1100),
                          child: const Text('Login', style: TextStyle(
                            color: Colors.white ,fontSize: 30, fontWeight: FontWeight.bold
                          ),),
                       ),
                     ),

                     
                   ],
                 ),
               ),




              Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                        FadeInUp(
                          duration: const Duration(milliseconds: 1800),
                            child: Container(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: primaryColor ),
                                boxShadow: [
                                  BoxShadow(
                                    color: primaryColor.withOpacity(0.2),
                                    blurRadius: 20.0,
                                    offset: const Offset(0, 10)
                                  )
                                ]
                              ),

                              child: Column(
                                children: [

                                   TextField(
                                     decoration:  InputDecoration(
                                       border: InputBorder.none,
                                       hintText: 'Email or Phone number',
                                       hintStyle:  TextStyle(color: Colors.grey[700])
                                     ),
                                   ),

                                  const Divider(),

                                  TextField(
                                    obscureText: true,
                                    decoration:  InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Password',
                                        hintStyle:  TextStyle(color: Colors.grey[700])
                                    ),
                                  ),


                                ],
                              ),
                            ),
                        ),


                        const SizedBox(height: 30,),

                      FadeInUp(
                          duration: const Duration(milliseconds: 2000),
                          child:
                            Container(
                              height: 60,
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    primaryColor,
                                    primaryColor.withOpacity(0.6)
                                  ]
                                )
                              ),
                              child:
                                const Text('Login',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),),
                            ),
                      ),

                      const SizedBox(height: 70,),
27:47
                      FadeInUp(
                          duration: const Duration(milliseconds: 2200),
                          child:
                             const Column(
                               children: [
                                 Text('Forgot Password?',
                                   style: TextStyle(
                                     color: primaryColor
                                   ),
                                 ),

                                 SizedBox(height: 40,),

                                 Text('Developed by hamza Alzibaq',
                                   style: TextStyle(
                                       color: primaryColor, fontWeight: FontWeight.w900
                                   ),
                                 ),
                               ],
                             )

                      )

                    ],
                  ),

              )


            ],
          ),
        ),
      )
    );
  }
}

