import 'package:anasabafone/components/components.dart';
import 'package:anasabafone/components/consts.dart';
import 'package:flutter/material.dart';

class LocationsScreen extends StatefulWidget {
  const LocationsScreen({super.key});

  @override
  State<LocationsScreen> createState() => _LocationsScreenState();
}

class _LocationsScreenState extends State<LocationsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: customeAppBar(
        context:context,

            title: bottomNavigatorTitle,
            isBottom: true,
            tabLength: 2,
            tabTitle: ['قائمة المراكز', 'الموقع على الخريطة']),
        body: TabBarView(
          children: [
            serviceList(items: items,isLocation: true),
            serviceList(items: items,isLocation: true),
          ],
        ),
      ),
    );
  }
}
