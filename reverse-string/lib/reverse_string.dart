import 'package:characters/characters.dart';

String reverse(String text) {
  final characters = text.characters;
  var result = <String>[];
  for (var index = characters.length - 1; index >= 0; index -= 1) {
    result.add(characters.elementAt(index));
  }
  return result.join();
}
