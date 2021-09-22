import 'package:flutter/material.dart';

class AppBarCus extends StatelessWidget {
  const AppBarCus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration:  const BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
        color:Color(0xff1b2245),
      ),
      child: Row(

        children: [
          const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Icon(Icons.menu,color: Colors.white,size: 40,)),
          Expanded(flex: 4,
              child:Container(
                  child: Text("My Work Group",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),textAlign: TextAlign.center,)
              ))
        ],
      ),
    );
  }
}
