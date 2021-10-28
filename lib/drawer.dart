import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeremender/Login/signin.dart';
import 'package:timeremender/utils/constants.dart';
import 'package:timeremender/utils/constants.dart';

import 'constants.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  // var email = 'iakwasititus@gmail.com';
  // TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

           UserAccountsDrawerHeader(
            accountName: Text(akwasiTitus),
            accountEmail: Text(myEmail),
            currentAccountPicture: const CircleAvatar(
              backgroundImage:AssetImage('Assets/bra.png'),
              foregroundColor: kTheWhiteColor,
              radius: 35,
            ),

          ),

          ListTile(
            hoverColor: kGreenColor,
            leading: const Icon((Icons.person_outline_rounded), color: kBlueGreyColor),
            title:  Text(profile, style: nameTextStyle),
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  SingIn()));
                Navigator.pop(context);
              });
            },
          ),
          ListTile(
            leading:  const Icon((Icons.message_outlined), color: kBlueGreyColor),
            hoverColor: kGreenColor,
            title:  Text(messages, style: nameTextStyle),
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
          ),

          ListTile(
            hoverColor: kGreenColor,
            leading:  const Icon((Icons.waves_outlined), color: kBlueGreyColor),
            title:    Text(activity, style:nameTextStyle),
            onTap: () {
              setState(() {
                //...codes here.......
                Navigator.pop(context);
              });
            },
          ),

          ListTile(
            hoverColor: kGreenColor,
            leading:  const Icon((Icons.list_rounded), color: kBlueGreyColor),
            title:    Text(list, style: nameTextStyle),
            onTap: () {
              setState(() {
                //...codes here.......
                Navigator.pop(context);
              });
            },
          ),

          ListTile(
            hoverColor: kGreenColor,
            leading:  const Icon((Icons.report_gmailerrorred_sharp), color: kBlueGreyColor),
            title:    Text(report, style:nameTextStyle),
            onTap: () {
              setState(() {
                //...codes here.......
                Navigator.pop(context);
              });
            },
          ),

          ListTile(
            hoverColor: kGreenColor,
            leading:  const Icon((Icons.flash_on), color: kBlueGreyColor),
            title:    Text(statistics, style: nameTextStyle),
            onTap: () {
              setState(() {
                //...codes here.......
                Navigator.pop(context);
              });
            },
          ),

          ListTile(
            hoverColor: kGreenColor,
            leading:  const Icon((Icons.outbond_outlined), color: kBlueGreyColor),
            title:    Text(signOut, style: nameTextStyle),
            onTap: () {
              setState(() {
               //TODO: Constants.prefs.setBool("singIn", false);
                Navigator.pushReplacementNamed(context, SingIn.routeName);
              });
            },
          ),

          const Divider(
            color: kBlueGreyColor,
          ),

          ListTile(
            hoverColor: kGreenColor,
            leading:  const Icon((Icons.share_outlined), color: kBlueGreyColor),
            title:    Text(tellAFriend, style: nameTextStyle),
            onTap: () {
              setState(() {
                //...codes here.......
                Navigator.pop(context);
              });
            },
          ),

          ListTile(
            hoverColor: kGreenColor,
            leading:  const Icon((Icons.help_outline_sharp), color: kBlueGreyColor),
            title:    Text(helpAndFeedback, style: nameTextStyle),
            onTap: () {
              setState(() {
                //...codes here.......
                Navigator.pop(context);
              });
            },
          ),

        ],
      ),

    );
  }
}
