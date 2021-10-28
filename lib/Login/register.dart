import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeremender/Login/signin.dart';
import '../constants.dart';

import '../home_page.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({Key? key}) : super(key: key);

  @override
  _RegisterUserState createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  // Color theWhiteColor = Colors.white;
  // Color myGreyColor = Colors.grey;
  // Color blackColor = Colors.black;
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
      backgroundColor: kBlackColor,
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
                  icon:  const Icon(
                    Icons.arrow_back_sharp,
                    color: kTheWhiteColor,
                    size: 25,
                  ),
                ),
                const SizedBox(height: 50),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                     Text(hiThere,style: kNiceTextStyle),
                     const SizedBox(height: 10.0,),
                    Text(newWelcome,style: kWelcomeTextStyle),
                    const SizedBox(height: 5),
                    Text(getRegistered,style: youBeenMissed),
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
                              style: kGreyColor,
                              keyboardType: TextInputType.name,
                              decoration:  InputDecoration(
                                fillColor: kMyGreyColor,
                                focusColor: kMyGreyColor,
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: kMyGreyColor)
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: kMyGreyColor)
                                ),
                                hintText: pleaseEnterFullName,
                                hintStyle: kGreyColor,
                                labelText: name,
                                labelStyle: kGreyColor
                              )
                          ),
                          const SizedBox(height: 25),
                          TextFormField(
                              style:  kGreyColor,
                              keyboardType: TextInputType.emailAddress,
                              decoration:   InputDecoration(
                                fillColor: kMyGreyColor,
                                focusColor: kMyGreyColor,
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: kMyGreyColor)
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: kMyGreyColor)
                                ),
                                hintText: enterEmail,
                                hintStyle: kGreyColor,
                                labelText: email,
                                labelStyle: kGreyColor
                              )
                          ),
                          const SizedBox(height: 25),
                          TextFormField(
                            style:  kGreyColor,
                              obscureText: _obscureText,
                              keyboardType: TextInputType.visiblePassword,
                              decoration:  InputDecoration(
                                fillColor: kMyGreyColor,
                                focusColor: kMyGreyColor,
                                focusedBorder:  const OutlineInputBorder(
                                    borderSide: BorderSide(color: kMyGreyColor)
                                ),
                                enabledBorder:  const OutlineInputBorder(
                                    borderSide: BorderSide(color: kMyGreyColor)
                                ),
                                hintText: enterEmail,
                                suffixIcon:  IconButton(
                                  disabledColor: Colors.blueGrey,
                                  icon:Icon(_obscureText ? Icons.visibility:Icons.visibility_off,),
                                  onPressed: _togglePasswordStatus,
                                  color: kMyGreyColor,
                                ),
                                hintStyle:  kGreyColor,
                                labelText: password,
                                labelStyle:  kGreyColor,
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
                           Text(alreadyHaveAccount,style: kDontHaveAnAccountTextStyle),
                          const SizedBox(width: 10.4),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SingIn()));
                              });
                            },
                            child:  Text(signIn,style:kRegisterTextStyle),
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
                        }, child:  Text(register,style: kRegisterTextStyle),
                        style: ElevatedButton.styleFrom(
                            primary: kTheWhiteColor,
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
