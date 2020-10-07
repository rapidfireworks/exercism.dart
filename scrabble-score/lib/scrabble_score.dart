final preset = Transposable.transpose({
  1: 'AEIOULNRST',
  2: 'DG',
  3: 'BCMP',
  4: 'FHVWY',
  5: 'K',
  8: 'JX',
  10: 'QZ'
});

int score(String letters) => letters
    .split('')
    .where(preset.containsKey)
    .map((letter) => preset[letter])
    .fold(0, (acc, val) => acc + val);

abstract class Transposable {
  static Map<String, int> transpose(Map<int, String> input) {
    return Map.fromEntries(input.entries.expand(unfold));
  }

  static Iterable<MapEntry<String, int>> unfold(MapEntry<int, String> input) {
    return input.value.split('').expand((letter) {
      return [
        MapEntry(letter.toUpperCase(), input.key),
        MapEntry(letter.toLowerCase(), input.key)
      ];
    });
  }
}
