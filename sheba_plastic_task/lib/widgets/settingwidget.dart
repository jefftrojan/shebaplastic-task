import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsWidget extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final String title;
  final IconData icon;
  final String? subtTitle;
  const SettingsWidget(
      {super.key,
      required this.backgroundColor,
      required this.iconColor,
      required this.title,
      this.subtTitle,
      required this.icon});

  @override
  Widget build(BuildContext context) {
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
            subtTitle!,
            style: TextStyle(color: Colors.black45, fontSize: 15.sp),
          ),
        ],
      ),
      trailing: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
        child: Icon(
          Icons.arrow_forward_ios_outlined,
          size: 20.sp,
          color: Colors.black,
        ),
      ),
    );
  }
}
