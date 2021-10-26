import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'changeschedule.dart';

class mycard extends StatefulWidget {
  final  myIcon;
  final String cardNames;
  final cardDiscription;


  const mycard({
    Key? key,
    required this.myIcon,
    required this.cardNames,
    required this.cardDiscription,
  }) : super(key: key);

  @override
  _mycardState createState() => _mycardState();
}

class _mycardState extends State<mycard> {

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        //mainAxisSize: MainAxisSize.min,
        elevation: 5,
        child:  InkWell(
          splashColor: Colors.blue,
          onTap: () {
            setState(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const changeSchedule()));

              //Navigator.pop(context);
            },
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon((widget.myIcon), size:35, color: Colors.green),
                Text(widget.cardNames, style: const TextStyle(fontSize: 22,color: Colors.grey)),
                Text(widget.cardDiscription, style: const TextStyle(fontSize: 22,color: Colors.blueGrey)),
              ],
            ),
          ),
        ),
    );
  }
}
