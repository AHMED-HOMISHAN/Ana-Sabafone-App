import 'package:anasabafone/components/components.dart';
import 'package:flutter/material.dart';

class VerticalAdsScreen extends StatefulWidget {
  final List items;
  final String title;
  const VerticalAdsScreen(
      {super.key, required this.items, required this.title});

  @override
  State<VerticalAdsScreen> createState() => _VerticalAdsScreenState();
}

class _VerticalAdsScreenState extends State<VerticalAdsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          leading: IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: serviceList(items: widget.items));
  }
}
