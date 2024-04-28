import 'package:flutter/material.dart';

class TextInputTranslate extends StatelessWidget {
  const TextInputTranslate({
    super.key, required this.readonly, required this.hintext, required this.controller,
  });
  final bool readonly;
  final String hintext;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left:4,right: 4),
      child: TextField(
        controller: controller,
        readOnly: readonly,
       textAlign: TextAlign.center,
       maxLines: 3,
       decoration:InputDecoration(
         border: const OutlineInputBorder(),
         hintText: hintext),
      ),
    );
  }
}