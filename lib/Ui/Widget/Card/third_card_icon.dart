import 'package:flutter/material.dart';

class ThirdCardIcon extends StatefulWidget {
  final String title;
  const ThirdCardIcon({Key? key, required this.title}) : super(key: key);

  @override
  _ThirdCardIconState createState() => _ThirdCardIconState();
}

class _ThirdCardIconState extends State<ThirdCardIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      height: 100,
      width: MediaQuery.of(context).size.width/3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 6), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10),
              child: Text(widget.title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),)
          ),
          const Icon(Icons.chat_bubble,color: Color(0xff1b2245),size: 30,),
        ],
      ),
    );
  }
}
