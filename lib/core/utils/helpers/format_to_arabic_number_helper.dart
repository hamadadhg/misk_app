import 'package:intl/intl.dart';

String formatToArabicNumberHelper({required DateTime time}) {
  return DateFormat('h:mm a', 'ar').format(time);
}
