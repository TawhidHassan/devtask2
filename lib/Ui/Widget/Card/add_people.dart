import 'package:flutter/material.dart';

class AddPeople extends StatefulWidget {
  final String title;
  const AddPeople({Key? key, required this.title}) : super(key: key);

  @override
  _AddPeopleState createState() => _AddPeopleState();
}

class _AddPeopleState extends State<AddPeople> {
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.people_alt,color: Colors.grey,size: 40,),
          Text(widget.title,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.grey.shade400),),
        ],
      ),
    );
  }
}
