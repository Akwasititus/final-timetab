import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeremender/Login/register.dart';
import '../constants.dart';
import '../home_page.dart';


class SingIn extends StatefulWidget {
  static  String routeName  = logIn;

   const SingIn({Key? key}) : super(key: key);

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {

  final formKey = GlobalKey<FormState>();

  final _userEmailController = TextEditingController();

  final _userPasswordController = TextEditingController();

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
          padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 15),
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
                children:   [
                  Text(niceText,style: kNiceTextStyle),
                  const SizedBox(height: 10.0,),
                   Text(welcomeText,style: kWelcomeTextStyle),
                   Text(youVeBeenMissed,style: kYouVeBeenMissedTextStyle),
                ],
              ),
              const SizedBox(height: 50),
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormField(
                          style:  kGreyColor,
                            controller: _userEmailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration:   InputDecoration(
                              filled: true,
                              focusColor: kMyGreyColor,
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:kMyGreyColor)
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: kMyGreyColor)
                              ),
                              hintText: enterEmail,
                              hintStyle: kGreyColor,
                              labelText: email,
                              labelStyle: kGreyColor,
                            ),
                        ),
                        const SizedBox(height: 25),
                        TextFormField(
                          style:  kGreyColor,
                            obscureText: _obscureText,
                            controller: _userPasswordController,
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
                              hintText: enterPassword,
                              hintStyle:  kGreyColor,
                              labelText: password,
                              suffixIcon:  IconButton(
                                disabledColor: kBlueGreyColor,
                                icon:Icon(_obscureText ? Icons.visibility:Icons.visibility_off,),
                                onPressed: _togglePasswordStatus,
                                color: kMyGreyColor,
                              ),
                              labelStyle:  kGreyColor,
                            ),
                        ),
                      ]
                  ),
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
                  Text(dontHaveAnAccount,style: kDontHaveAnAccountTextStyle),
                const SizedBox(width: 10.4),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RegisterUser()));
                    });
                  },
                  child:  Text(register,style: kRegisterTextStyle),
                ),

              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: (){
                setState(() {
                   //TODO: Constants.prefs.setBool('singIn', true);
                   //TODO: Navigator.pushReplacementNamed(
                   //TODO:     context,  MyHomePage.routeName);
                  Navigator.pushNamed(
                      context,  MyHomePage.routeName);
                });
              }, child:   Text(signIn,style: kSignedInTextStyle
            ),
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








