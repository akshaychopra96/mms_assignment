import 'package:intl/intl.dart';

class NumberUtils {
  static String addCommasToNumber(String number) {
    try {
      final formatter = NumberFormat('###,###.##');
      return formatter.format(num.parse(number).toInt());
    } catch (ex) {
      return '';
    }
  }

  static String getFractionPart(double number) {
    int result =
        ((number - number.truncate()) * 100).ceil().truncate(); // <-- 6026
    return result.toString();
    // return decimalValue.toStringAsFixed(4);
  }
}
