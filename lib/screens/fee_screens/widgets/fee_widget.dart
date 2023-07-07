import 'package:flutter/material.dart';
import 'package:sch_mgnt_system/constants.dart';

class FeeButton extends StatelessWidget {
  const FeeButton(
      {Key? key,
        required this.title,
        required this.iconData,
        required this.onPressed})
      : super(key: key);
  final String title;
  final IconData iconData;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kSecondaryColor, kPrimaryColor],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(kDefaultPadding),
            bottomLeft: Radius.circular(kDefaultPadding),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 16.0,
              ),
            ),
            Icon(iconData, color: kTextOtherColor, size: 30.0),
          ],
        ),
      ),
    );
  }
}

class FeeDetailRow extends StatelessWidget {
  const FeeDetailRow({Key? key, required this.title, required this.statusValue})
      : super(key: key);
  final String title;
  final String statusValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
            fontSize: 14,
            color: kTextLightColor,
          ),
        ),
        Text(
          statusValue,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
            fontSize: 14,
            color: kTextLightColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}