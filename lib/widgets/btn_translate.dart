import 'package:flutter/material.dart';

class BtnTranslate extends StatelessWidget {
  const BtnTranslate({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(onPressed: (){},
      style: ButtonStyle(
       minimumSize: MaterialStatePropertyAll(Size(size.width*0.5, size.height*0.2*(0.4))),
       backgroundColor: MaterialStatePropertyAll(Colors.blue.shade600)), 
       child:  Text('Translate',style: TextStyle( fontSize:size.height*0.3*(0.1) ,color:Colors.white,fontWeight: FontWeight.bold),),),
    );
  }
}