import 'package:intl/intl.dart';

extension DateExtension on DateTime{
String dateFormatter(DateTime dateTime){
  return DateFormat('dd/MM').format(dateTime);
}
}