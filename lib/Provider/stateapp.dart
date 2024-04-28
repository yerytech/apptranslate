
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:simplytranslate/simplytranslate.dart';

part 'stateapp.g.dart';

@riverpod
class Language1 extends _$Language1 {
  @override
   build()=>'es';
   void selectLanguage(String value){
    state=value;
   }
}


@riverpod
class Language2 extends _$Language2 {
  @override
   build()=>'en';
   void selectLanguage(String value){
    state=value;
   }
}

@riverpod
class TextToTranslate extends _$TextToTranslate {
  @override
   build()=>'';
   void textTotranslate(String text){
    state=text;
   }

}

@riverpod
class TextTranslated extends _$TextTranslated {
  @override
   build()=>'';
   void textTranslated(String text){
    state=text;
   }
   
   
}



@riverpod
class FinalTextProvider extends _$FinalTextProvider {
  @override
  FutureOr<String> build() async {
   final translator=SimplyTranslator(EngineType.google);
 final la1=ref.watch(language1Provider);
 final la2=ref.watch(language2Provider);
 final input=ref.watch(textToTranslateProvider);
   final text= await   translator.trSimply(input.toString(),'$la1','$la2');
    ref.watch(textTranslatedProvider.notifier).textTranslated(text);
  return '';
  }
}

