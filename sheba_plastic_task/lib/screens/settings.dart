import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sheba_plastic_task/widgets/mode.dart';
import 'package:sheba_plastic_task/widgets/settingwidget.dart';

import '../widgets/listtile.dart';
import 'account.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

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
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Settings',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Account',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Account()));
                },
                child: const AccountDetails(
                  name: 'David Clerisseau',
                  info: 'Personal Info',
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Text(
                'Settings',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.h,
              ),
              SettingsWidget(
                backgroundColor: Colors.red.shade50,
                iconColor: Colors.red.shade200,
                title: 'Language',
                icon: Icons.public,
                subtTitle: 'English',
              ),
              SizedBox(
                height: 10.h,
              ),
              SettingsWidget(
                backgroundColor: Colors.lightBlue.shade50,
                iconColor: Colors.blue.shade200,
                title: 'Notifications',
                icon: Icons.notifications_active,
                subtTitle: '',
              ),
              SizedBox(
                height: 10.h,
              ),
              ModeWidget(
                  backgroundColor: Colors.purple.shade100,
                  iconColor: Colors.purple,
                  title: 'Dark Mode',
                  subtTitle: 'off',
                  icon: Icons.brightness_6),
              //add swith
              SizedBox(
                height: 10.h,
              ),
              SettingsWidget(
                backgroundColor: Colors.red.shade50,
                iconColor: Colors.red.shade200,
                title: 'Help',
                icon: Icons.support,
                subtTitle: '',
              )
            ],
          ),
        ),
      ),
    );
  }
}
