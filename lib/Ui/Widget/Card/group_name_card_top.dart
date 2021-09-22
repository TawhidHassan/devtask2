import 'package:flutter/material.dart';

class GroupNameCardTop extends StatefulWidget {
  final String title;
  const GroupNameCardTop({Key? key, required this.title}) : super(key: key);

  @override
  _GroupNameCardTopState createState() => _GroupNameCardTopState();
}

class _GroupNameCardTopState extends State<GroupNameCardTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all( 10),
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
          const CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 30,
              child: Icon(Icons.print,color: Colors.green,size: 50,)),
          Text(widget.title,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 24,color: Colors.grey.shade400),),
          const Icon(Icons.settings,color: Colors.grey,size: 40,),
        ],
      ),
    );
  }
}
