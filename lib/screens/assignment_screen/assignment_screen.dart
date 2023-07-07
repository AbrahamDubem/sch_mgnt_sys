import 'package:flutter/material.dart';
import 'package:sch_mgnt_system/constants.dart';
import 'package:sch_mgnt_system/screens/assignment_screen/data/assignment_data.dart';
import 'package:sch_mgnt_system/screens/assignment_screen/widgets/assignment_widgets.dart';

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({Key? key}) : super(key: key);
  static String routeName = 'AssignmentScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignments'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: kTextOtherColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding),
                  topRight: Radius.circular(kDefaultPadding),
                ),
              ),
              child: ListView.builder(
                  padding: EdgeInsets.all(kDefaultPadding),
                  itemCount: assignment.length,
                  itemBuilder: (context, int index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: kDefaultPadding),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(kDefaultPadding),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kDefaultPadding),
                              color: kTextOtherColor,
                              boxShadow: [
                                BoxShadow(
                                  color: kTextLightColor,
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 100,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(kDefaultPadding),
                                    color: kSecondaryColor.withOpacity(0.4),
                                  ),
                                  child: Center(
                                    child: Text(
                                      assignment[index].subjectName,
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w400,
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                                kHalfSizeBox,
                                Text(
                                  assignment[index].topicName,
                                  style: TextStyle(
                                    color: kTextBlackColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.0,
                                  ),
                                ),
                                kHalfSizeBox,
                                AssignmentDetailRow(
                                    title: 'Assign Date',
                                    statusValue: assignment[index].assignDate),
                                AssignmentDetailRow(
                                    title: 'Last Date',
                                    statusValue: assignment[index].lastDate),
                                AssignmentDetailRow(
                                    title: 'Status',
                                    statusValue: assignment[index].status),
                                kHalfSizeBox,
                                if (assignment[index].status == 'Pending')
                                  AssignmentButton(
                                    onPress: () {
                                      // submit here
                                    },
                                    title: 'To be Submitted',
                                  )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
