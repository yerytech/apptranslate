import 'package:flutter/material.dart';




class DropDownBtn extends StatelessWidget {
  const DropDownBtn({
    super.key,
    required this.items, required this.value, required this.onchanged,
    
  });

  final List<String> items;
   final String value ;
   final void Function(String?)? onchanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
       value: value,
      items: items.map((value){
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value));
    
      }).toList(), onChanged:onchanged);
  }
}
