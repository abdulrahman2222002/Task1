// ignore_for_file: file_names

import 'package:cours_task1/widgets.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2C2C2C),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff2C2C2C),
        leading: const Icon(Icons.arrow_back),
        actions: const [
          Icon(Icons.wb_sunny_outlined),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/me.png'),
                  radius: 45,
                ),
                CircleAvatar(
                  backgroundColor: Color(0xffFEBC16),
                  radius: 12,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 4.0, bottom: 4),
              child: Text(
                'Abdulrahman Mahmoud',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            const Text(
              'zizoa6098@gmail.com',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Container(
                height: 35,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 60),
                  child: Text(
                    'Upgrade to PRO',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: const Color(0xffFEBC16),
                ),
              ),
            ),
            DefaultContainer(
              Icons.supervisor_account,
              'Privacy',
              Icons.arrow_forward_ios_rounded,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: DefaultContainer(
                Icons.history,
                'Purchase History',
                Icons.arrow_forward_ios_rounded,
              ),
            ),
            DefaultContainer(
              Icons.help,
              'Help & Support',
              Icons.arrow_forward_ios_rounded,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: DefaultContainer(
                Icons.settings,
                'Settings',
                Icons.arrow_forward_ios_rounded,
              ),
            ),
            DefaultContainer(
              Icons.person_add,
              'Invite a friend',
              Icons.arrow_forward_ios_rounded,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: DefaultContainer(
                Icons.supervisor_account,
                'Logout',
                Icons.arrow_forward_ios_rounded,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
