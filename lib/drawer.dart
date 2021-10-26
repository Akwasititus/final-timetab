import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeremender/Login/signin.dart';
import 'package:timeremender/utils/constants.dart';
import 'package:timeremender/utils/constants.dart';

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

          const UserAccountsDrawerHeader(
            accountName: Text('Akwasi Titus'),
            accountEmail: Text('iakwasititus@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('Assets/bra.png'),
              foregroundColor: Colors.white,
              radius: 35,
            ),

          ),

          ListTile(
            hoverColor: Colors.green,
            leading: const Icon((Icons.person_outline_rounded), color: Colors.blueGrey),
            title: const Text('Profile', style: TextStyle(
              color: Colors.black54,
              fontSize: 15.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),
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
            leading:  const Icon((Icons.message_outlined), color: Colors.blueGrey),
            hoverColor: Colors.green,
            title: const Text('Messages', style: TextStyle(
              color: Colors.black54,
              fontSize: 15.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
          ),

          ListTile(
            hoverColor: Colors.green,
            leading:  const Icon((Icons.waves_outlined), color: Colors.blueGrey),
            title:   const Text('Activity', style: TextStyle(
              color: Colors.black54,
              fontSize: 15.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),
            onTap: () {
              setState(() {
                //...codes here.......
                Navigator.pop(context);
              });
            },
          ),

          ListTile(
            hoverColor: Colors.green,
            leading:  const Icon((Icons.list_rounded), color: Colors.blueGrey),
            title:   const Text('List', style: TextStyle(
              color: Colors.black54,
              fontSize: 15.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),
            onTap: () {
              setState(() {
                //...codes here.......
                Navigator.pop(context);
              });
            },
          ),

          ListTile(
            hoverColor: Colors.green,
            leading:  const Icon((Icons.report_gmailerrorred_sharp), color: Colors.blueGrey),
            title:   const Text('Report', style: TextStyle(
              color: Colors.black54,
              fontSize: 15.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),
            onTap: () {
              setState(() {
                //...codes here.......
                Navigator.pop(context);
              });
            },
          ),

          ListTile(
            hoverColor: Colors.green,
            leading:  const Icon((Icons.flash_on), color: Colors.blueGrey),
            title:   const Text('Statistics', style: TextStyle(
              color: Colors.black54,
              fontSize: 15.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),
            onTap: () {
              setState(() {
                //...codes here.......
                Navigator.pop(context);
              });
            },
          ),

          ListTile(
            hoverColor: Colors.green,
            leading:  const Icon((Icons.outbond_outlined), color: Colors.blueGrey),
            title:   const Text('Sign Out', style: TextStyle(
              color: Colors.black54,
              fontSize: 15.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),
            onTap: () {
              setState(() {
               //TODO: Constants.prefs.setBool("singIn", false);
                Navigator.pushReplacementNamed(context, SingIn.routeName);
              });
            },
          ),

          const Divider(
            color: Colors.blueGrey,
          ),

          ListTile(
            hoverColor: Colors.green,
            leading:  const Icon((Icons.share_outlined), color: Colors.blueGrey),
            title:   const Text('Tell a Friend', style: TextStyle(
              color: Colors.black54,
              fontSize: 15.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),
            onTap: () {
              setState(() {
                //...codes here.......
                Navigator.pop(context);
              });
            },
          ),

          ListTile(
            hoverColor: Colors.green,
            leading:  const Icon((Icons.help_outline_sharp), color: Colors.blueGrey),
            title:   const Text('Help and Feedback', style: TextStyle(
              color: Colors.black54,
              fontSize: 15.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),
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
