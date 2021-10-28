import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeremender/peroids/thisMonth.dart';
import 'package:timeremender/peroids/thisWeek.dart';
import 'package:timeremender/peroids/thisYear.dart';
import 'package:timeremender/tab_controllers.dart';
import 'changeschedule.dart';
import 'constants.dart';
import 'drawer.dart';


class MyHomePage extends StatefulWidget {
  static const String routeName  = "/home";
  const MyHomePage({Key? key, required this.title, }) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        minimum: const EdgeInsets.only(top: 20),
        child: Scaffold(
          appBar: AppBar(
            leading:  const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: CircleAvatar(
                backgroundImage: AssetImage('Assets/bra.png'),
                foregroundColor: Colors.white,
                radius: 15,
              ),
            ),
            backgroundColor: kGreenColor,
            bottom: PreferredSize(
                child: Center(
                  child: Container(
                    color: kGreenColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                         Text(mainTitle, style: mainTextTextStyle),
                        const Divider(
                          height: 1,
                          color: Colors.blueGrey,
                        ),
                        Padding(
                          padding: const  EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const this_week()));
                                  });
                                },
                                child: Text(thisWeek, style: kPeroidsTextStyle
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  //print('This Month is tapped');
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const this_month()));
                                  });
                                },
                                child: Text(thisMonth, style: kPeroidsTextStyle
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  //print('This year is tapped');
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const this_year()));
                                  });
                                },
                                child: Text(thisYear, style: kPeroidsTextStyle
                                ),
                              ),


                            ],
                          ),
                        )
                      ],
                    ),

                  ),
                ),
                preferredSize: const Size.fromHeight(160),
            ),

          ),
          body: const TabControllers(),

          endDrawer: const MenuDrawer(),

          floatingActionButton: FloatingActionButton(
            backgroundColor: kGreenColor,
            elevation: 3.5,
            child: const Icon(Icons.add),
            tooltip: add,
            splashColor: kGreenColor,
            onPressed: () {
              setState(() {
                displayModalBottomSheet(context);
              });
            },
          ),
        ),
      );
  }
}

void displayModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
          height: MediaQuery.of(context).size.height * 0.77,
          decoration: const BoxDecoration(
            color: kTheWhiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
          ),
          child: Container(
            margin: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         Text(addNewMedicine, style: addMdicineTextColor),
                        const SizedBox(width: 25.0,),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                            // should close buttonSheet
                          },
                          icon: const Icon(
                            Icons.close,color: kBlueGreyColor, size: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 35.0,),

                   Text(name, style: nameTextStyle),
                  const SizedBox(height: 10.0,),
                   TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: pleaseEnterName,
                    ),
                  ),

                  const SizedBox(height: 40.0,),
                   Text(dose, style: nameTextStyle),
                  const SizedBox(height: 10.0,),
                   TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: pleaseEnterDoseHere,
                    ),
                  ),
                  const SizedBox(height: 35.0,),

                  //shapes
                   Text(shape, style: nameTextStyle),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.crop_7_5_rounded,color: kBlueGreyColor, size: 25,
                        ),
                      ),
                      const SizedBox(width: 20.0,),

                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.crop_7_5_rounded,color: kBlueGreyColor, size: 25,
                        ),
                      ),
                      const SizedBox(width: 20.0,),

                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.crop_7_5_rounded,color: kBlueGreyColor, size: 25,
                        ),
                      ),
                      const SizedBox(width: 20.0,),

                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.panorama_horizontal_outlined,color: kBlueGreyColor, size: 25,
                        ),
                      ),
                      const SizedBox(width: 20.0,),

                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.panorama_horizontal_outlined,color: kBlueGreyColor, size: 25,
                        ),
                      ),

                    ],
                  ),
                  const SizedBox(height: 35.0,),

                  //chose color
                   Text(colour,style: nameTextStyle),
                  Row(
                    children: [

                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.circle,color: kBlueAccentColor, size: 25,
                        ),
                      ),
                      const SizedBox(width: 20.0,),
                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.circle,color: kAmberAccentColor, size: 25,
                        ),
                      ),
                      const SizedBox(width: 20.0,),

                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.circle,color: kBrownColor, size: 25,
                        ),
                      ),
                      const SizedBox(width: 20.0,),

                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.circle,color: kTealAccentColor, size: 25,
                        ),
                      ),
                      const SizedBox(width: 20.0,),

                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.circle,color: kTealAccentColor, size: 25,
                        ),
                      ),
                      const SizedBox(width: 20.0,),
                    ],
                  ),
                  const SizedBox(height: 25,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const ChangeSchedule()));
                          //open Change Shedule Screen
                        },
                        child: Text(addSchedule),
                        style: ElevatedButton.styleFrom(
                            primary: kGreenColor,
                            padding: const EdgeInsets.all(10),
                            textStyle: const TextStyle(
                              fontSize: 30,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold,
                            )

                        ),

                      )
                    ],
                  ),
                ],

              ),
            ),
          )
      ));
}

