import 'package:flutter/material.dart';
import 'package:timeremender/cardviewdetails.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'constants.dart';

class TabControllers extends StatefulWidget {
  const TabControllers({Key? key}) : super(key: key);

  @override
  _TabControllersState createState() => _TabControllersState();
}

class _TabControllersState extends State<TabControllers> {

  //TODO: var url = "";
  var data;


  @override
  void initState() {
    super.initState();
    fetchData();
    setState(() {

    });
  }

  fetchData() async{
    //TODO: var res = await http.get(url);
    //TODO: data = jsonDecode(res.body);
  }


  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            const TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: 'Sun'),
                Tab(text: 'Sat'),
                Tab(text: 'Mon'),
                Tab(text: 'Tue'),
                Tab(text: 'Wed'),
                Tab(text: 'Thur'),
                Tab(text: 'Fri'),
              ],

            ),

            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4, //height of TabBarView
                width: MediaQuery.of(context).size.height * 0.4, //width of TabBarView
                decoration:  const BoxDecoration(
                    border: Border(top: BorderSide(color: kGreenColor, width: 0.5))
                ),
                child: TabBarView(
                  children: [
                    //for(int i=0; i<=count; i++)

                    //new tab 1
                    data !=  null?ThightusGridViewsForTabs(data: data, clour: kGreenColor,): const Center(
                      child:CircularProgressIndicator()
                    ),

                    //new tab 2
                    data !=  null?
                    ThightusGridViewsForTabs(data: data, clour: kGreenColor,): const Center(
                        child:CircularProgressIndicator()
                    ),

                    //new tab 3
                    data !=  null?ThightusGridViewsForTabs(data: data,clour: kGreenColor,): const Center(
                        child:CircularProgressIndicator()
                    ),

                    //new tab 4
                    data !=  null?ThightusGridViewsForTabs(data: data,clour: kGreenColor,): const Center(
                        child:CircularProgressIndicator()
                    ),


                    //new tab 5
                    data !=  null?ThightusGridViewsForTabs(data: data,clour: kGreenColor,): const Center(
                        child:CircularProgressIndicator()
                    ),

                    //new tab 6
                    data !=  null?ThightusGridViewsForTabs(data: data,clour: kGreenColor,): const Center(
                        child:CircularProgressIndicator()
                    ),

                    //new tab 7
                    data !=  null?ThightusGridViewsForTabs(data: data,clour: kGreenColor,): const Center(
                        child:CircularProgressIndicator()
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ThightusGridViewsForTabs extends StatelessWidget {
   const ThightusGridViewsForTabs({
    Key? key,
    required this.data,required this.clour
  }) : super(key: key);

  final  data;
  final Color clour;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemBuilder: (context, index){
          return const mycard(
              myIcon: Icons.person_outline_rounded,
              cardNames: 'Card Name',
              cardDiscription: 'More Infor.');
        }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
    ),
      itemCount: data.lenght,
    );
  }
}
