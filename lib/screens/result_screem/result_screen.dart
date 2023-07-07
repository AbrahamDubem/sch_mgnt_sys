import 'package:flutter/material.dart';
import 'package:sch_mgnt_system/constants.dart';
import 'package:sch_mgnt_system/screens/result_screem/data/result_data.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);
  static String routeName = 'ResultScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Result',
        ),
      ),
      body: Column(
        children: [
          Container(
            height: kDefaultPadding,
          ),
          Text(
            'You are excellent',
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontWeight: FontWeight.w900,
                ),
          ),
          Text('Chidubem', style: Theme.of(context).textTheme.subtitle1!),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  kDefaultPadding * 4,
                ),
                color: kTextOtherColor,
              ),
              child: ListView.builder(
                padding: EdgeInsets.all(kDefaultPadding),
                  itemCount: result.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: kDefaultPadding),
                      padding: EdgeInsets.all(kDefaultPadding / 2),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(kDefaultPadding),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                result[index].subjectName,
                                textAlign: TextAlign.start,
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${result[index].obtainedMarks} /  ${result[index].totalMarks}',
                                    style:
                                        Theme.of(context).textTheme.subtitle2,
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        width:
                                            result[index].totalMarks.toDouble(),
                                        height: kDefaultPadding / 2,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[700],
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                                kDefaultPadding),
                                            bottomRight: Radius.circular(
                                                kDefaultPadding),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: kDefaultPadding / 2,
                                        width: result[index]
                                            .obtainedMarks
                                            .toDouble(),
                                        decoration: BoxDecoration(
                                          color: result[index].grade == 'D'
                                              ? kErrorBorderColor
                                              : kTextOtherColor,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                                kDefaultPadding),
                                            bottomRight: Radius.circular(
                                                kDefaultPadding),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    result[index].grade,
                                    textAlign: TextAlign.start,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2!
                                        .copyWith(fontWeight: FontWeight.w900),
                                  )
                                ],
                              )
                            ],
                          )
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
