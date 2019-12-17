import 'package:collection/collection.dart';

class Hamming {
  int distance(String first, String second) {
    if (first == second) {
      return 0;
    } else if (first.isEmpty ^ second.isEmpty) {
      throw ArgumentError('no strand must be empty');
    } else if (first.length != second.length) {
      throw ArgumentError('left and right strands must be of equal length');
    }

    return new IterableZip([first.runes, second.runes])
        .where((l) => l[0] != l[1])
        .length;
  }
}
