class ResultData {
  final String subjectName;
  final int totalMarks;
  final int obtainedMarks;
  final String grade;

  ResultData(
    this.subjectName,
    this.totalMarks,
    this.obtainedMarks,
    this.grade,
  );
}

List<ResultData> result = [
  ResultData('Physics', 100, 80, 'A'),
  ResultData('Mathematics', 100, 70, 'A'),
  ResultData('Chemistry', 100, 50, 'B'),
  ResultData('Biology', 100, 60, 'grade'),
];
