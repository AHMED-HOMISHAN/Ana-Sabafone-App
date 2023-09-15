import 'package:anasabafone/components/components.dart';
import 'package:anasabafone/components/consts.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: customeAppBar(
        context:context,

              title: bottomNavigatorTitle,
              isBottom: true,
              tabLength: 4,
              tabTitle: ['أساسية', 'مضافة', 'تجوال', 'رسائل']),
          body: TabBarView(
            children: [
              serviceList(items: items),
              serviceList(items: items),
              serviceList(items: items),
              serviceList(items: items),
            ],
          ),
        ));
  }
}
