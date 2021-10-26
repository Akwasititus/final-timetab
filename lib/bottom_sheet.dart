import 'package:flutter/material.dart';

import 'changeschedule.dart';

class bottomSheet extends StatefulWidget {
  const bottomSheet({Key? key}) : super(key: key);

  @override
  _bottomSheetState createState() => _bottomSheetState();
}

class _bottomSheetState extends State<bottomSheet> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    );
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
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const changeSchedule()));
                          });
                          //open Change Shedule Screen
                        }, child: const Text('Add Schedule'),
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
}
