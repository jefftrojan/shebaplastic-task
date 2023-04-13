import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.check_box,
                  size: 40.sp,
                  color: Colors.lightBlue,
                )),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Account',
              style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Text('Photo'),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                    left: 100,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(30)),
                        child: Icon(
                          Icons.person,
                          size: 40.sp,
                          color: Colors.black45,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Text(
                        'Upload Image',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Text(
                  'Name',
                  style: TextStyle(color: Colors.black45, fontSize: 15.sp),
                ),
                SizedBox(
                  width: 85.w,
                ),
                Text(
                  'David Clerissau',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
                ),
                // const Divider(
                //   thickness: 0.5,
                //   color: Colors.black,
                // ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Row(
              children: [
                Text(
                  'Gender',
                  style: TextStyle(color: Colors.black45, fontSize: 15.sp),
                ),
                SizedBox(
                  width: 75.w,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.male,
                        size: 20.sp,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.female,
                        size: 20.sp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Row(
              children: [
                Text(
                  'Age',
                  style: TextStyle(color: Colors.black45, fontSize: 15.sp),
                ),
                SizedBox(
                  width: 100.w,
                ),
                Text(
                  '28',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
                ),
                // const Divider(
                //   thickness: 0.5,
                //   color: Colors.black,
                // ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Row(
              children: [
                Text(
                  'Email',
                  style: TextStyle(color: Colors.black45, fontSize: 15.sp),
                ),
                SizedBox(
                  width: 85.w,
                ),
                Text(
                  'clerissau@gmail.com',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
                ),
                // const Divider(
                //   thickness: 0.5,
                //   color: Colors.black,
                // ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
