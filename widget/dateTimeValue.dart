import 'package:intl/intl.dart';

class DateValue{
  DateFormat format = DateFormat("dd-MM-yyyy");
  DateTime currentDate =DateTime.now();
  String startTime = "T00:00:00Z";
  String endTime = "T23:59:59Z";


  DateTimeValue today() {
    String selectedDate = format.format(DateTime.now());
    String startDate = selectedDate+startTime;
    String endDate = selectedDate+endTime;
    return DateTimeValue(startDate,endDate);
  }

  DateTimeValue yesterday() {
    String date = format.format(DateTime.now().subtract(const Duration(days: 1)));
    String startDate = date+startTime;
    String endDate = date+endTime;
    return DateTimeValue(startDate,endDate);
  }

  DateTimeValue thisWeek() {

    String startWeek = format.format(currentDate.subtract( Duration(days: currentDate.weekday -1)));
    String endWeek = format.format(currentDate.add( Duration(days: DateTime.daysPerWeek - currentDate.weekday)));

    String startDate = startWeek+startTime;
    String endDate = endWeek+endTime;

    return DateTimeValue(startDate,endDate);
  }


  DateTimeValue thisMonth() {
    String startMonth = format.format(DateTime(currentDate.year,currentDate.month,1));
    String endMonth = format.format(DateTime(currentDate.year,currentDate.month+1).subtract(Duration(days: 1)));

    String startDate = startMonth+startTime;
    String endDate = endMonth+endTime;
    return DateTimeValue(startDate,endDate);
  }

}

class DateTimeValue{
  String startDate;
  String endDate;
  DateTimeValue(this.startDate, this.endDate);

  @override
  String toString() {
    return 'DateTimeValue{startDate: $startDate, endDate: $endDate}';
  }
}