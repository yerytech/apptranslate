import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:translate_yery/Provider/stateapp.dart';

import '../widgets/witgets.dart';

class HomePage extends ConsumerWidget {
const HomePage({super.key});
  @override
  Widget build(context,ref) {
   
   
      
    final size= MediaQuery.of(context).size;
    final textToTrasnlate= TextEditingController();
    final textTrasnlated= TextEditingController(text: ref.watch(textTranslatedProvider).toString());
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Image.asset('assets/yerytranslate.png',fit:BoxFit.cover ,
           width: size.width*0.3,
           ), 
            TextInputTranslate(readonly: false, hintext: 'Agregar Texto', controller: textToTrasnlate,),
           MidelWidget(size: size,),
           TextInputTranslate(readonly: true, hintext: 'Texto Traducido', controller: textTrasnlated,),
           BtnTranslate(size: size, onpressed: () {
            ref.read(textToTranslateProvider.notifier).textTotranslate(textToTrasnlate.text);
             ref.read(finalTextProviderProvider);
             
            
             },)
        ],),),
      )
   );
  }
}






