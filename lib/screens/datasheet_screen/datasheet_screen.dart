import 'package:flutter/material.dart';
import 'package:sch_mgnt_system/constants.dart';
import 'package:sch_mgnt_system/screens/datasheet_screen/data/datasheet_data.dart';

class DataSheetScreen extends StatelessWidget {
  const DataSheetScreen({Key? key}) : super(key: key);
  static const String routeName = 'DataSheetScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataSheet'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kTextOtherColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(kDefaultPadding),
            topLeft: Radius.circular(kDefaultPadding),
          ),
        ),
        child: ListView.builder(
            itemCount: dateSheet.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                    left: kDefaultPadding / 2, right: kDefaultPadding / 2),
                padding: EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: kDefaultPadding,
                      child: Divider(
                        thickness: 1.0,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              dateSheet[index].date.toString(),
                              style: TextStyle(
                                color: kTextBlackColor,
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              dateSheet[index].monthName,
                              style: TextStyle(
                                color: kTextBlackColor,
                                fontSize: 13.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              dateSheet[index].subjectName,
                              style: TextStyle(
                                color: kTextBlackColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                            ),
                            Text(
                              dateSheet[index].dayName,
                              style: TextStyle(
                                color: kTextBlackColor,
                                fontWeight: FontWeight.w300,
                                fontSize: 13.0,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              dateSheet[index].time,
                              style: TextStyle(
                                color: kTextLightColor,
                                fontWeight: FontWeight.w300,
                                fontSize: 13.0,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                      child: Divider(
                        thickness: 1.0,
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  } 
}
