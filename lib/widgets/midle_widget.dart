import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../Provider/providers.dart';
import 'dropdown_btn.dart';

class MidelWidget extends ConsumerWidget {
  const MidelWidget({
    super.key,
    required this.size,
    
  });

  final Size size;


  @override
  Widget build( context,ref) {
    final lg1= ref.watch(language1Provider);
    final lg2= ref.watch(language2Provider);
    
     final  List<String> items =[
    "en",
    "es",
    "fr",
    "de",
    "it",
    "pt",
    "ru",
    "zh",
    "ja",
    "ar",
    "hi"];
    return Container(
     padding: const  EdgeInsets.only(left: 2,right: 2),
     // color: Colors.red,
     width: size.width*0.9,
     height:size.height*0.2*(0.3) ,
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
    
     DropDownBtn(items: items, value: lg1.toString(), onchanged: (String? value ) { 
        ref.read(language1Provider.notifier).selectLanguage(value!);
      
      }, ),
     const  Icon(Icons.arrow_forward_outlined),
     DropDownBtn(items: items, value: lg2.toString(), onchanged: (String?value ) {
      ref.read(language2Provider.notifier).selectLanguage(value!);
       },)
       
    
    
     ],),);
  }
}