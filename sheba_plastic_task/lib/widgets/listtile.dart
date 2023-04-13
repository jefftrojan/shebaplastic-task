import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountDetails extends StatelessWidget {
  final String name;
  final String info;
  const AccountDetails({super.key, required this.name, required this.info});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 45.w,
        height: 50.h,
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(25)),
        child: Icon(
          Icons.person,
          size: 30.sp,
          color: Colors.black,
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(
                fontSize: 18.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            info,
            style: TextStyle(
              fontSize: 18.sp,
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
      trailing: Container(
        height: 50.h,
        width: 40.w,
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
        child: Icon(
          Icons.arrow_forward_ios_outlined,
          size: 30.sp,
          color: Colors.black54,
        ),
      ),
    );
  }
}
