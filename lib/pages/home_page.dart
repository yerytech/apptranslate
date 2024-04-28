import 'package:flutter/material.dart';
import '../widgets/witgets.dart';

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
           MidelWidget(size: size,),
           const TextInputTranslate(readonly: true, hintext: 'Texto Traducido',),
           BtnTranslate(size: size)
        ],),),
      )
   );
  }
}






