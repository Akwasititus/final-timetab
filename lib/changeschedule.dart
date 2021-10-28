import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class ChangeSchedule extends StatefulWidget {
  const ChangeSchedule({Key? key}) : super(key: key);

  @override
  _ChangeScheduleState createState() => _ChangeScheduleState();
}

class _ChangeScheduleState extends State<ChangeSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 35.0),
          child: Container(
          color:kTheWhiteColor,
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
                      Icons.arrow_back_sharp,color: kBlueGreyColor, size: 25,
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
                      children:  [
                        Text(pillName, style: changeScheduleTextStyle),
                        const SizedBox(height: 2.9),
                        Text(gabapentin, style:GabapentinTextStyle ),
                        const SizedBox(height: 20.9),
                        Text(pillDosage, style:changeScheduleTextStyle),
                        const SizedBox(height: 2.9),
                        Text(mg, style: GabapentinTextStyle),
                        const SizedBox(height: 20.9),
                        Text(nextDose, style: changeScheduleTextStyle),
                        const SizedBox(height: 2.9,),
                        Text(pm, style:GabapentinTextStyle),
                      ],

                    )
                  ],
                ),

               const SizedBox(height: 30,),
               Text(dose, style:doseTextStyle),
                const SizedBox(height: 10,),
                 Text(time, style: changeScheduleTextStyle),
                const SizedBox(height: 20,),
                 Text(program, style: doseTextStyle),
                const SizedBox(height: 10,),
                 Text(peroids, style: nameTextStyle),
                const SizedBox(height: 30,),
                 Text(quantity, style:doseTextStyle),
                const SizedBox(height: 10,),
                 Text(capsules, style:nameTextStyle),
                const SizedBox(height: 60,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        //open Change Shedule Screen
                      }, child:  Text(changeSchedule),
                      style: ElevatedButton.styleFrom(
                          primary: kGreenColor,
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
      ),
    );
  }
}
