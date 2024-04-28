

import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Image.asset('assets/yerytranslate.png',fit:BoxFit.cover ,
           width: size.width*0.3,
           ), 
           const TextInputTranslate(readonly: false, hintext: 'Agregar Texto',),
           const TextInputTranslate(readonly: true, hintext: 'Texto Traducido',),

        
        ],),),
      )
   );
  }
}

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