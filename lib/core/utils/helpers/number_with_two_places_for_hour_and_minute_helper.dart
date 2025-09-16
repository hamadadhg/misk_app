import 'package:intl/intl.dart';

String numberWithTwoPlacesForHourAndMinuteHelper({required DateTime time}) {
  return DateFormat('hh:mm').format(time);
}
