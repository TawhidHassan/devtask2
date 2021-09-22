import 'package:flutter/material.dart';

class PeopleCard extends StatefulWidget {
  final String title;
  final bool isAdmin;
  final bool isPanding;
  const PeopleCard({Key? key, required this.title, required this.isAdmin,  this.isPanding=false}) : super(key: key);

  @override
  _PeopleCardState createState() => _PeopleCardState();
}

class _PeopleCardState extends State<PeopleCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all( 10),
      padding: EdgeInsets.all(8),
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           Expanded(
             flex: 2,
             child: Stack(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 30,
                    child: Icon(Icons.print,color: Colors.redAccent,size: 50,)
                ),
                 Positioned(
                  top: 25,
                  left: 40,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(Icons.call,color: Colors.white,)
                  ),
                )
              ],
          ),
           ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.bakery_dining,color: Color(0xff1b2245),size: 40,),
                    Text(widget.title,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 24,color: Colors.grey.shade400),),
                  ],
                ),
                widget.isAdmin? Text("Group admin",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.blue.shade400),textAlign: TextAlign.center,):Container(),
                widget.isPanding? Text("Pending Approval",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.red.shade400),):Container(),
              ],
            )
          ),
          widget.isPanding? Expanded(
              flex: 2,
              child: Icon(Icons.settings,color: Colors.grey,size: 40,)):Container(),
        ],
      ),
    );
  }
}
