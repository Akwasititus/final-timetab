import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeremender/peroids/thisMonth.dart';
import 'package:timeremender/peroids/thisWeek.dart';
import 'package:timeremender/peroids/thisYear.dart';
import 'package:timeremender/tab_controllers.dart';
import 'changeschedule.dart';
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

            // actions: const [
            //   // action button
            //   // IconButton(
            //   //   icon: const Icon( Icons.menu,size: 30 ),
            //   //   onPressed: () {
            //   //     setState(() {
            //   //       Navigator.push(
            //   //           context,
            //   //           MaterialPageRoute(builder: (context) => const menuDrawer()));
            //   //     });
            //   //   },
            //   // )
            //
            // ],
            leading:  const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: CircleAvatar(
                backgroundImage: AssetImage('Assets/bra.png'),
                foregroundColor: Colors.white,
                radius: 15,
              ),
            ),
            //title: const Text('TIMETAB'),
            // leading: CircleAvatar(
            //   backgroundImage: AssetImage('Assets/bra.png'),
            //   foregroundColor: Colors.white,
            //   radius: 15,
            // ),
            backgroundColor: Colors.green,
            bottom: PreferredSize(
                child: Center(
                  child: Container(
                    color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('TIMETAB', style: TextStyle(
                          color: Colors.white,
                          fontSize: 55.4,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 2.1,
                          fontFamily: 'Lato',
                        ),),

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
                                child: const Text('This week', style:  TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
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
                                child: const Text('This month', style:  TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
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
                                child: const Text('This Year', style:  TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
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
                preferredSize: const Size.fromHeight(160),
            ),

          ),
          body: const TabControllers(),

          endDrawer: const MenuDrawer(),

          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green,
            elevation: 3.5,
            child: const Icon(Icons.add),
            tooltip: 'Add',
            splashColor: Colors.green,
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
            color: Colors.white,
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
                        const Text('Add New Medicine', style: TextStyle(
                          color: Colors.black54,
                          fontSize: 30.4,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 2.1,
                        )),
                        const SizedBox(width: 25.0,),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                            // should close buttonSheet
                          },
                          icon: const Icon(
                            Icons.close,color: Colors.blueGrey, size: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 35.0,),

                  const Text('Name:', style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.4,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2.1,
                  )),
                  const SizedBox(height: 10.0,),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Please Enter Name',
                    ),
                  ),

                  const SizedBox(height: 40.0,),
                  const Text('Dose: ', style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.4,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2.1,
                  )),
                  const SizedBox(height: 10.0,),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Please Enter Dose Here',
                    ),
                  ),
                  const SizedBox(height: 35.0,),

                  //shapes
                  const Text('Shape', style: TextStyle(

                    color: Colors.black54,
                    fontSize: 15.4,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2.1,
                  )),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.crop_7_5_rounded,color: Colors.blueGrey, size: 25,
                        ),
                      ),
                      const SizedBox(width: 20.0,),

                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.crop_7_5_rounded,color: Colors.blueGrey, size: 25,
                        ),
                      ),
                      const SizedBox(width: 20.0,),

                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.crop_7_5_rounded,color: Colors.blueGrey, size: 25,
                        ),
                      ),
                      const SizedBox(width: 20.0,),

                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.panorama_horizontal_outlined,color: Colors.blueGrey, size: 25,
                        ),
                      ),
                      const SizedBox(width: 20.0,),

                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.panorama_horizontal_outlined,color: Colors.blueGrey, size: 25,
                        ),
                      ),

                    ],
                  ),
                  const SizedBox(height: 35.0,),

                  //chose color
                  const Text('Color',  style: TextStyle(

                    color: Colors.black54,
                    fontSize: 15.4,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 2.1,
                  )),
                  Row(
                    children: [

                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.circle,color: Colors.blueAccent, size: 25,
                        ),
                      ),
                      const SizedBox(width: 20.0,),
                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.circle,color: Colors.amberAccent, size: 25,
                        ),
                      ),
                      const SizedBox(width: 20.0,),

                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.circle,color: Colors.brown, size: 25,
                        ),
                      ),
                      const SizedBox(width: 20.0,),

                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.circle,color: Colors.tealAccent, size: 25,
                        ),
                      ),
                      const SizedBox(width: 20.0,),

                      IconButton(
                        onPressed: () {
                          // should close buttonSheet
                        },
                        icon: const Icon(
                          Icons.circle,color: Colors.tealAccent, size: 25,
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
                                MaterialPageRoute(builder: (context) => const changeSchedule()));
                          //open Change Shedule Screen
                        },
                        child: const Text('Add Schedule'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
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

