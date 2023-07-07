class DataSheet {
  final int date;
  final String monthName;
  final String subjectName;
  final String dayName;
  final String time;

  DataSheet(
      this.date, this.monthName, this.subjectName, this.dayName, this.time);
}

List<DataSheet> dateSheet = [
  DataSheet(11, 'JAN', 'Computer Science', 'Monday', '9:00am'),
  DataSheet(12, 'JAN', 'Biology', 'Tuesday', '10:00am'),
  DataSheet(13, 'JAN', 'Chemistry', 'Wednesday', '10:00pm'),
  DataSheet(14, 'JAN', 'Physics', 'Thursday', '10:00am'),
  DataSheet(15, 'JAN', 'Mathematics', 'Friday', '9:00am'),
  DataSheet(16, 'JAN', 'Physical Fitness', 'Saturday', '9:00am'),
];
