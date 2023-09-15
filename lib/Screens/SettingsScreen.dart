import 'package:anasabafone/components/consts.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            )),
        title: const Text('إعدادات'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Text('تغيير اللغة',
                          style: TextStyle(color: primaryColor, fontSize: 20)),
                      Text('عربي',
                          style: TextStyle(color: primaryColor, fontSize: 15))
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.language,
                    color: primaryColor,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('قفل التطبيق عند الخروج',
                      style: TextStyle(color: primaryColor, fontSize: 20)),
                  const SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.lock_open_rounded,
                    color: primaryColor,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('تغيير كلمة السر',
                      style: TextStyle(color: primaryColor, fontSize: 20)),
                  const SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.password_outlined,
                    color: primaryColor,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(' حذف الحسابات',
                      style: TextStyle(color: primaryColor, fontSize: 20)),
                  const SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.manage_accounts_sharp,
                    color: primaryColor,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
