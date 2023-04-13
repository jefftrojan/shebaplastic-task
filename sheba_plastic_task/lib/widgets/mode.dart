import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModeWidget extends StatelessWidget {
  final Color backgroundColor;
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtTitle;
  const ModeWidget(
      {super.key,
      required this.backgroundColor,
      required this.iconColor,
      required this.title,
      required this.subtTitle,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    bool index = false;
    return ListTile(
        leading: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: backgroundColor, borderRadius: BorderRadius.circular(25)),
          child: Icon(
            icon,
            size: 30.sp,
            color: iconColor,
          ),
        ),
        title: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp),
            ),
            const Spacer(),
            Text(
              subtTitle,
              style: TextStyle(color: Colors.black45, fontSize: 15.sp),
            ),
          ],
        ),
        trailing: Switch.adaptive(
          splashRadius: 10,
          value: index,
          onChanged: (index) {},
          activeColor: Colors.white,
        ));
  }
}
