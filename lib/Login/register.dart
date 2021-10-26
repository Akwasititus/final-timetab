import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeremender/Login/signin.dart';

import '../home_page.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({Key? key}) : super(key: key);

  @override
  _RegisterUserState createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  Color theWhiteColor = Colors.white;
  Color myGreyColor = Colors.grey;
  Color blackColor = Colors.black;
  final formKey = GlobalKey<FormState>();

  bool _obscureText = true;
  void _togglePasswordStatus() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  alignment: Alignment.topLeft,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon:  Icon(
                    Icons.arrow_back_sharp,
                    color: theWhiteColor,
                    size: 25,
                  ),
                ),
                const SizedBox(height: 50),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text('Hi! THERE',style: TextStyle(
                      color: theWhiteColor,
                      fontSize: 50.4,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.5,
                    ),),
                     const SizedBox(height: 10.0,),
                    Text('Welcome to TimeTab',style: TextStyle(
                      color: theWhiteColor,
                      fontSize: 25.4,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2.1,
                    ),),
                    const SizedBox(height: 5),
                    Text('Get Registered',style: TextStyle(
                      color: theWhiteColor,
                      fontSize: 25.4,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2.1,
                    ),),
                  ],
                ),
                const SizedBox(height: 25),

                Form(
                  key: formKey ,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFormField(
                              style:  TextStyle(
                                  color: myGreyColor
                              ),
                              keyboardType: TextInputType.name,
                              decoration:  InputDecoration(
                                fillColor: myGreyColor,
                                focusColor: myGreyColor,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: myGreyColor)
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: myGreyColor)
                                ),
                                hintText: 'Please Enter Full Name',
                                hintStyle: TextStyle(
                                  color: myGreyColor,
                                ),
                                labelText: 'Name',
                                labelStyle: TextStyle(
                                  color: myGreyColor,
                                ),
                              )
                          ),
                          const SizedBox(height: 25),
                          TextFormField(
                              style:  TextStyle(
                                  color: myGreyColor
                              ),
                              keyboardType: TextInputType.emailAddress,
                              decoration:  InputDecoration(
                                fillColor: myGreyColor,
                                focusColor: myGreyColor,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: myGreyColor)
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: myGreyColor)
                                ),
                                hintText: 'Enter Email',
                                hintStyle: TextStyle(
                                  color: myGreyColor,
                                ),
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                  color: myGreyColor,
                                ),
                              )
                          ),
                          const SizedBox(height: 25),
                          TextFormField(
                            style:  TextStyle(
                                color: myGreyColor
                            ),
                              obscureText: _obscureText,
                              keyboardType: TextInputType.visiblePassword,
                              decoration:  InputDecoration(
                                fillColor: myGreyColor,
                                focusColor: myGreyColor,
                                focusedBorder:  OutlineInputBorder(
                                    borderSide: BorderSide(color: myGreyColor)
                                ),
                                enabledBorder:  OutlineInputBorder(
                                    borderSide: BorderSide(color: myGreyColor)
                                ),
                                hintText: 'Enter Password',
                                suffixIcon:  IconButton(
                                  disabledColor: Colors.blueGrey,
                                  icon:Icon(_obscureText ? Icons.visibility:Icons.visibility_off,),
                                  onPressed: _togglePasswordStatus,
                                  color: myGreyColor,
                                ),
                                hintStyle:  TextStyle(
                                  color: myGreyColor,
                                ),
                                labelText: 'Password',
                                labelStyle:  TextStyle(
                                  color: myGreyColor,
                                ),
                              ),
                              ),
                        ]),
                    ),
                  ),

                Container(
                  alignment: Alignment.bottomCenter,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children:  [
                           Text('Already have Account',style: TextStyle(
                            color: theWhiteColor,
                            fontSize: 15.4,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 2.1,
                          ),),
                          const SizedBox(width: 10.4),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SingIn()));
                              });
                            },
                            child: const Text('Sign In',style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20.4,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 2.1,
                            ),),
                          )

                        ],
                      ),
                      const SizedBox(height: 10,),

                      ElevatedButton(
                        onPressed: (){
                          setState(() {
                            Navigator.pushNamed(
                                context,  MyHomePage.routeName);
                          });
                        }, child:  Text('Sign In',style: TextStyle(
                        color: blackColor,
                        letterSpacing: 1.5,
                      ),),
                        style: ElevatedButton.styleFrom(
                            primary: theWhiteColor,
                            padding: const EdgeInsets.all(10),
                            textStyle: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
