import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class changeSchedule extends StatefulWidget {
  const changeSchedule({Key? key}) : super(key: key);

  @override
  _changeScheduleState createState() => _changeScheduleState();
}

class _changeScheduleState extends State<changeSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 35.0),
        child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  alignment: Alignment.topLeft,
                  onPressed: () {
                    Navigator.pop(context);
                    // should close buttonSheet
                  },
                  icon: const Icon(
                    Icons.arrow_back_sharp,color: Colors.blueGrey, size: 25,
                  ),
                ),
              ),
              const SizedBox(width: 20.0,),

              Row(
                children: [
                    Image.asset('Assets/pill.png'),
                  const SizedBox(width: 20),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text('Pill Name', style: TextStyle(

                        color: Colors.blueGrey,
                        fontSize: 15.4,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.1,
                      ),),
                      SizedBox(height: 2.9),
                      Text('Gabapentin', style: TextStyle(

                        color: Colors.green,
                        fontSize: 20.4,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.1,
                      ),),
                      SizedBox(height: 20.9),


                      Text('Pill Dosage', style: TextStyle(

                        color: Colors.blueGrey,
                        fontSize: 15.4,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.1,
                      ),),
                      SizedBox(height: 2.9),
                      Text('300 mg', style: TextStyle(
                        color: Colors.green,
                        fontSize: 20.4,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.1,
                      ),),
                      SizedBox(height: 20.9),

                      Text('Next Dose', style: TextStyle(

                        color: Colors.blueGrey,
                        fontSize: 15.4,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.1,
                      ),),
                      SizedBox(height: 2.9,),
                      Text('3 PM', style: TextStyle(

                        color: Colors.green,
                        fontSize: 20.4,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.1,
                      ),),
                    ],

                  )
                ],
              ),

             const SizedBox(height: 30,),

            const Text('Dose', style: TextStyle(

              color: Colors.black,
              fontSize: 20.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),

              const SizedBox(height: 10,),

              const Text('3 times  9am, 3pm & 9pm', style: TextStyle(

                color: Colors.black38,
                fontSize: 15.4,
                fontWeight: FontWeight.w900,
              )),

              const SizedBox(height: 20,),

              const Text('Program', style: TextStyle(

                color: Colors.black,
                fontSize: 20.4,
                fontWeight: FontWeight.w900,
                letterSpacing: 2.1,
              )),

              const SizedBox(height: 10,),

              const Text('Total 8 weeks \t 6 weeks left', style: TextStyle(

                color: Colors.black38,
                fontSize: 15.4,
                fontWeight: FontWeight.w900,
              )),

              const SizedBox(height: 30,),


              const Text('Quantity', style: TextStyle(

                color: Colors.black,
                fontSize: 20.4,
                fontWeight: FontWeight.w900,
                letterSpacing: 2.1,
              )),

              const SizedBox(height: 10,),

              const Text('Total 168 capsules \t 126 capsules left', style: TextStyle(

                color: Colors.black38,
                fontSize: 15.4,
                fontWeight: FontWeight.w900,
              )),

              const SizedBox(height: 60,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      //open Change Shedule Screen
                    }, child: const Text('Change Schedule'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: const EdgeInsets.all(10),
                        textStyle: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )

                    ),

                  )
                ],
              ),

            ],

          ),
        ),
        ),
      ),
    );
  }
}
