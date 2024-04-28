import 'package:flutter/material.dart';

class TextInputTranslate extends StatelessWidget {
  const TextInputTranslate({
    super.key, required this.readonly, required this.hintext,
  });
  final bool readonly;
  final String hintext;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left:4,right: 4),
      child: TextField(
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