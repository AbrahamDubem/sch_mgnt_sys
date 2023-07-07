class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignDate,
      this.lastDate, this.status);
}

List<AssignmentData> assignment = [
  AssignmentData(
      'Mathematics', 'Fractions', '17 Nov 2022', '20 Nov 2022', 'Pending'),
  AssignmentData(
      'Biology', 'Red Blood Cells', '17 Nov 2022', '20 Nov 2022', 'Submitted'),
  AssignmentData(
      'Physics', 'bohr Theory', '17 Nov 2022', '20 Nov 2022', 'Pending'),
  AssignmentData('Chemistry', 'Organic Chemistry', '17 Nov 2022', '20 Nov 2022',
      'Pending'),
];
