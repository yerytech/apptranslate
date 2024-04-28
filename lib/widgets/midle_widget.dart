import 'package:flutter/material.dart';

import 'dropdown_btn.dart';

class MidelWidget extends StatelessWidget {
  const MidelWidget({
    super.key,
    required this.size,
    
  });

  final Size size;


  @override
  Widget build(BuildContext context) {
     final  List<String> items =['es','en'];
    return Container(
     padding: const  EdgeInsets.only(left: 2,right: 2),
     // color: Colors.red,
     width: size.width*0.9,
     height:size.height*0.2*(0.3) ,
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
    
     DropDownBtn(items: items),
     const  Icon(Icons.arrow_forward_outlined),
     DropDownBtn(items: items)
       
    
    
     ],),);
  }
}