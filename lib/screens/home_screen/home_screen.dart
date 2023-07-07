import 'package:flutter/material.dart';
import 'package:sch_mgnt_system/constants.dart';
import 'package:sch_mgnt_system/screens/assignment_screen/assignment_screen.dart';
import 'package:sch_mgnt_system/screens/datasheet_screen/datasheet_screen.dart';
import 'package:sch_mgnt_system/screens/fee_screens/fee_screens.dart';
import 'package:sch_mgnt_system/screens/home_screen/widgets/student_data.dart';
import 'package:sch_mgnt_system/screens/my_profile/my_profile.dart';
import 'package:sch_mgnt_system/screens/result_screem/result_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StudentName(
                          studentName: 'Chidubem',
                        ),
                        kHalfSizeBox,
                        StudentClass(studentClass: 'Class 3A | seat no: 12'),
                        kHalfSizeBox,
                        StudentYear(studentYear: '2022-2023'),
                      ],
                    ),
                    kHalfSizeBox,
                    StudentPicture(
                        picAddress: 'assets/images/student.png',
                        onPress: () {
                          Navigator.pushNamed(
                              context, MyProfileScreen.routeName);
                        }),
                  ],
                ),
                sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StudentDataCard(
                        title: 'Attendance', value: '90.02%', onPress: () {}),
                    StudentDataCard(
                        title: 'Fees Due',
                        value: '#30,000',
                        onPress: () {
                          Navigator.pushNamed(context, FeeScreen.routeName);
                        }),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: kTextOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 3),
                    topRight: Radius.circular(kDefaultPadding * 3),
                  ),
                ),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/images/quiz.jpg',
                          title: 'Take Quiz',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(
                                context, AssignmentScreen.routeName);
                          },
                          icon: 'assets/images/assignment.jpg',
                          title: 'Assignments',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/images/holiday.jpg',
                          title: 'Holidays',
                        ),
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/images/timetable.jpg',
                          title: 'Time\nTable',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(
                                context, ResultScreen.routeName);
                          },
                          icon: 'assets/images/result.jpg',
                          title: 'Results',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(
                                context, DataSheetScreen.routeName);
                          },
                          icon: 'assets/images/datasheet.jpg',
                          title: 'DataSheet',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/images/ask.png',
                          title: 'Ask',
                        ),
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/images/gallery.jpg',
                          title: 'Gallery',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/images/resume.jpg',
                          title: 'Leave\nApplication',
                        ),
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/images/lock.jpg',
                          title: 'Change\nPassword',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/images/event.jpg',
                          title: 'Events',
                        ),
                        HomeCard(
                          onPress: () {},
                          icon: 'assets/images/logout.jpg',
                          title: 'Logout!',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key? key,
      required this.onPress,
      required this.icon,
      required this.title})
      : super(key: key);
  final VoidCallback onPress;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(
          top: kDefaultPadding / 2,
        ),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(
            kDefaultPadding / 2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 40.0,
              width: 40.0,
              color: kTextOtherColor,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(
              height: kDefaultPadding / 3,
            )
          ],
        ),
      ),
    );
  }
}
