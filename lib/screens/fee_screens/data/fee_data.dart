class FeeData {
  final String receiptNo;
  final String month;
  final String date;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;

  FeeData(this.receiptNo, this.month, this.date, this.paymentStatus,
      this.totalAmount, this.btnStatus);

}

List<FeeData> fee = [
  FeeData('90871', 'November', '4 Nov 2022', 'Pending', '10,000\#', 'PAY NOW'),
  FeeData('90870', 'September', '8 Sept 2022', 'Paid', '5,000\#', 'DOWNLOAD'),
  FeeData('90869', 'July', '30 July 2022', 'Paid', '3,000\#', 'DOWNLOAD'),
];