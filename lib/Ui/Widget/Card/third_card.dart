import 'package:flutter/material.dart';

class ThirdCard extends StatefulWidget {
  final String title;
  final String number;
  const ThirdCard({Key? key, required this.title, required this.number}) : super(key: key);

  @override
  _ThirdCardState createState() => _ThirdCardState();
}

class _ThirdCardState extends State<ThirdCard> {
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
          Text(widget.number,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),),
        ],
      ),
    );
  }
}
