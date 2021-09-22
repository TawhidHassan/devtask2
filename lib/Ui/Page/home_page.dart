// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:devtask2/Ui/Widget/AppBar/app_bar.dart';
import 'package:devtask2/Ui/Widget/Card/add_people.dart';
import 'package:devtask2/Ui/Widget/Card/client_card.dart';
import 'package:devtask2/Ui/Widget/Card/group_name_card_top.dart';
import 'package:devtask2/Ui/Widget/Card/people_card.dart';
import 'package:devtask2/Ui/Widget/Card/third_card.dart';
import 'package:devtask2/Ui/Widget/Card/third_card_icon.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      maintainBottomViewPadding: true,
      minimum: EdgeInsets.zero,
      child: Scaffold(
          body:SingleChildScrollView(
            child: Column(
              children:[
                const AppBarCus(),
                Row(
                  children: [
                    const  ClientCard(title: "Total Client",number: "2644",),
                    const ClientCard(title: "Total Income",number: "2644",),
                  ],
                ),
                const GroupNameCardTop(title: "Groupnamehere",),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const  ThirdCard(title: "Total Drivers",number: "2644",),
                    const ThirdCardIcon(title: "Group chat",),
                  ],
                ),

                const PeopleCard(title: "jessica Miller",isAdmin: true,isPanding: false,),
                AddPeople(title: "Add new People  to the group",),
                PeopleCard(title: "jessica Miller",isAdmin: true,isPanding: false,),
                SizedBox(
                  height: MediaQuery.of(context).size.height/2,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(8),
                    shrinkWrap: true,
                    children: [
                      const PeopleCard(title: "jessica Miller",isAdmin: false,isPanding: true,),
                      const PeopleCard(title: "jessica Miller",isAdmin: false,isPanding: true,),
                      const PeopleCard(title: "jessica Miller",isAdmin: false,isPanding: true,),
                    ],
                  ),
                )

              ],
            ),
          )
      ),
    );
  }
}
