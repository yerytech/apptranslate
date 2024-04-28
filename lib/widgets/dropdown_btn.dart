import 'package:flutter/material.dart';

class DropDownBtn extends StatelessWidget {
  const DropDownBtn({
    super.key,
    required this.items,
  });

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
       value: 'es',
      items: items.map((value){
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value));
    
      }).toList(), onChanged: (value){});
  }
}
