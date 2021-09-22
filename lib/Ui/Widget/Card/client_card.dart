import 'package:flutter/material.dart';

class ClientCard extends StatefulWidget {
  final String title;
  final String number;
  const ClientCard({Key? key, required this.title, required this.number}) : super(key: key);

  @override
  _ClientCardState createState() => _ClientCardState();
}

class _ClientCardState extends State<ClientCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width/2,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(3, -2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(widget.title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
          Text(widget.number,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),),
        ],
      ),
    );
  }
}
