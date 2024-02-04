import 'package:logging/logging.dart';

extension StringExtensions on String {
  String removeIfStartsWith(String value) {
    if (startsWith(value)) {
      return replaceFirst(value, "");
    }
    return this;
  }

  bool get hasArabicLetters {
    return contains(RegExp(r'[\u0621-\u063A\u0641-\u0652]', unicode: true));
  }

  bool get hasWhiteSpaces {
    return contains(RegExp(r"[\s]"));
  }

  bool get containsLetters {
      return contains(RegExp("[a-zA-Z]"));
  }

  void log() {
    Logger("logger").log(Level.SEVERE, this);
  }
}