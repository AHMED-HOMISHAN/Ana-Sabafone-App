import 'package:anasabafone/components/components.dart';
import 'package:anasabafone/components/consts.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
        title: const Text('أنا سبافون \t V3.4.0'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Center(child: Image.asset('')),
          const Center(child: Text('وصف')),
          verticalSpacing,
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text('تواصل معنا'),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('إنضم إلينا على شبكة لينكد إن'),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.linked_camera),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'اعجب بنا على فيسبوك',
                        style: TextStyle(color: primaryColor),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.facebook_outlined,
                        color: primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'غرد معنا على تويتر',
                        style: TextStyle(color: primaryColor),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.message_outlined,
                        color: primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'إنضم إلينا على شبكة لينكد إن',
                        style: TextStyle(color: primaryColor),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.youtube_searched_for, color: primaryColor),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
