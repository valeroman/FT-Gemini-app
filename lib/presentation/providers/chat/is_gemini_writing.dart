import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_gemini_writing.g.dart';

// State provider , este provider mantiene un objecto mas elaborado
// se puede mantener cualquier tipo de informacion, o instancia de clases
@riverpod
class IsGeminiWriting extends _$IsGeminiWriting {
  @override
  bool build() => false;

  void setIsWriting() {
    state = true;
  }

  void setIsNotWriting() {
    state = false;
  }
}
