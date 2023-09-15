import 'package:anasabafone/Screens/Layouts/Balance/GiftBalance.dart';
import 'package:anasabafone/components/components.dart';
import 'package:anasabafone/components/consts.dart';
import 'package:flutter/material.dart';

class BalanceLayoutScreen extends StatefulWidget {
  const BalanceLayoutScreen({super.key});

  @override
  State<BalanceLayoutScreen> createState() => _BalanceLayoutScreenState();
}

class _BalanceLayoutScreenState extends State<BalanceLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
          appBar: customeAppBar(
              context: context,
              title: bottomNavigatorTitle,
              isBottom: true,
              isScrollable: true,
              tabLength: 7,
              tabTitle: [
                'إهداء',
                'الجيل الرابع',
                'جي إس إم',
                'يابلاش',
                'إنترنت',
                'تواصل إجتماعي',
                'رسائل'
              ]),
          body: TabBarView(
            children: [
              const GiftBalanceScreen(),
              serviceList(items: items),
              serviceList(items: items),
              serviceList(items: items),
              serviceList(items: items),
              serviceList(items: items),
              serviceList(items: items),
            ],
          )),
    );
  }
}
