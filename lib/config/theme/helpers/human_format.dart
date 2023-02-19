import 'package:intl/intl.dart';

class HumanFormat {
  static String humanReadableNumber(double number) {
    return NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);
  }
}
