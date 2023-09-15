import 'package:anasabafone/Screens/AboutScreen.dart';
import 'package:anasabafone/Screens/SettingsScreen.dart';
import 'package:anasabafone/components/components.dart';
import 'package:anasabafone/components/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          actions: [
            PopupMenuButton<int>(
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(IconlyBroken.setting, color: primaryColor),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "إعدادات",
                        style: TextStyle(color: primaryColor),
                      )
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: [
                      Icon(IconlyBroken.send, color: primaryColor),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "توصل بخدمة العملاء",
                        style: TextStyle(color: primaryColor),
                      )
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Row(
                    children: [
                      Icon(IconlyBroken.chat, color: primaryColor),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "الاسئلة المتدوالة",
                        style: TextStyle(color: primaryColor),
                      )
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 4,
                  child: Row(
                    children: [
                      Icon(IconlyBroken.infoCircle, color: primaryColor),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "عن التطبيق",
                        style: TextStyle(color: primaryColor),
                      )
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 5,
                  child: Row(
                    children: [
                      Icon(IconlyBroken.logout, color: primaryColor),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "خروج",
                        style: TextStyle(color: primaryColor),
                      )
                    ],
                  ),
                ),
              ],
              offset: const Offset(0, 5),
              color: Colors.white,
              elevation: 2,
              onSelected: (value) {
                if (value == 1) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SettingsScreen()));
                } else if (value == 4) {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AboutScreen()));
                }
              },
            ),
          ],
          title: Column(children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                IconlyBroken.profile,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              '96771*******',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'أحمد سمير حميشان',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(
              height: 10,
            ),
          ]),
          bottom: const PreferredSize(
            preferredSize: Size(double.infinity, 40),
            child: Material(
              child: TabBar(
                labelStyle:
                    TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                unselectedLabelStyle:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                isScrollable: false,
                tabs: [
                  Tab(
                    child: Text(
                      'رصيد',
                    ),
                  ),
                  Tab(
                    child: Text(
                      'فواتيري',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            profilBalance(),
            profileInvoice(),
          ],
        ),
      ),
    );
  }
}
