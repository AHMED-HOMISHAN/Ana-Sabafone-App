// ignore_for_file: avoid_unnecessary_containers

import 'package:anasabafone/Screens/DetialScreen.dart';
import 'package:anasabafone/components/components.dart';
import 'package:anasabafone/components/consts.dart';
import 'package:flutter/material.dart';

class GiftBalanceScreen extends StatefulWidget {
  const GiftBalanceScreen({super.key});

  @override
  State<GiftBalanceScreen> createState() => _GiftBalanceScreenState();
}

class _GiftBalanceScreenState extends State<GiftBalanceScreen> {
  @override
  Widget build(BuildContext context) {
    Map<String, List<List<String>>> items = {
      'باقات الجيل الرابع': [
        [
          'assets/images/3.jpg',
          'أنتر (6 جيجا)',
          '''تخفيضات 20% من قيمة الاشتراك في الباقات لفترة محدودة .. 
          6 جيجا 
          30 يوم
          مقابل 160.6695 وحدة بعد التخفيض .
          '''
        ],
        [
          'assets/images/3.jpg',
          'أنتر الأسبوعية ',
          '''تخفيضات 20% من قيمة الاشتراك في الباقات لفترة محدودة .. 
          2 جيجا 
          7 أيام صلاحية
          مقابل 66.9456 وحدة بعد التخفيض .
          '''
        ],
        [
          'assets/images/3.jpg',
          'أنتر اليومية ',
          '''تخفيضات 20% من قيمة الاشتراك في الباقات لفترة محدودة .. 
          1.5 جيجا 
          24 ساعة 
          مقابل 36.8201 وحدة بعد التخفيض .
          '''
        ],
        [
          'assets/images/3.jpg',
          'باقة أنتر 10 على 10 ',
          '''خلي النت شغال ولايهمك شيء
          باقة انتر 10 على 10
          أسرع..أكثر..أوفر
          10 جيجا 
          30 يوم  
          مقابل 125.5230 وحدة بعد التخفيض 
          يمكن استخدام الباقة من الساعة 2 صباحا حتى الساعة 12 ظهرا
          '''
        ],
      ],
      'باقات الجيل   الرابع': [
        [
          'assets/images/3.jpg',
          'أنتر (6 جيجا)',
          '''تخفيضات 20% من قيمة الاشتراك في الباقات لفترة محدودة .. 
          6 جيجا 
          30 يوم
          مقابل 160.6695 وحدة بعد التخفيض .
          '''
        ],
        [
          'assets/images/3.jpg',
          'أنتر الأسبوعية ',
          '''تخفيضات 20% من قيمة الاشتراك في الباقات لفترة محدودة .. 
          2 جيجا 
          7 أيام صلاحية
          مقابل 66.9456 وحدة بعد التخفيض .
          '''
        ],
        [
          'assets/images/3.jpg',
          'أنتر اليومية ',
          '''تخفيضات 20% من قيمة الاشتراك في الباقات لفترة محدودة .. 
          1.5 جيجا 
          24 ساعة 
          مقابل 36.8201 وحدة بعد التخفيض .
          '''
        ],
        [
          'assets/images/3.jpg',
          'باقة أنتر 10 على 10 ',
          '''خلي النت شغال ولايهمك شيء
          باقة انتر 10 على 10
          أسرع..أكثر..أوفر
          10 جيجا 
          30 يوم  
          مقابل 125.5230 وحدة بعد التخفيض 
          يمكن استخدام الباقة من الساعة 2 صباحا حتى الساعة 12 ظهرا
          '''
        ],
      ],
      'باقات الجيل  الرابع': [
        [
          'assets/images/3.jpg',
          'أنتر (6 جيجا)',
          '''تخفيضات 20% من قيمة الاشتراك في الباقات لفترة محدودة .. 
          6 جيجا 
          30 يوم
          مقابل 160.6695 وحدة بعد التخفيض .
          '''
        ],
        [
          'assets/images/3.jpg',
          'أنتر الأسبوعية ',
          '''تخفيضات 20% من قيمة الاشتراك في الباقات لفترة محدودة .. 
          2 جيجا 
          7 أيام صلاحية
          مقابل 66.9456 وحدة بعد التخفيض .
          '''
        ],
        [
          'assets/images/3.jpg',
          'أنتر اليومية ',
          '''تخفيضات 20% من قيمة الاشتراك في الباقات لفترة محدودة .. 
          1.5 جيجا 
          24 ساعة 
          مقابل 36.8201 وحدة بعد التخفيض .
          '''
        ],
        [
          'assets/images/3.jpg',
          'باقة أنتر 10 على 10 ',
          '''خلي النت شغال ولايهمك شيء
          باقة انتر 10 على 10
          أسرع..أكثر..أوفر
          10 جيجا 
          30 يوم  
          مقابل 125.5230 وحدة بعد التخفيض 
          يمكن استخدام الباقة من الساعة 2 صباحا حتى الساعة 12 ظهرا
          '''
        ],
      ],
    };

    return CustomScrollView(
      slivers: [
        for (int oldindex = 0; oldindex < items.length; oldindex++) ...{
          Section(
            titleColor: primaryColor,
            title: items.keys.elementAt(oldindex),
            headerColor: const Color.fromRGBO(247, 249, 252, 1),
            items:
                List.generate(items.values.elementAt(oldindex).length, (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailScreen(
                            title: items.values.elementAt(oldindex)[index][1],
                            subTitle: items.values.elementAt(oldindex)[index]
                                [2],
                            image: items.values.elementAt(oldindex)[index][0],
                            isLocation: false,
                          )));
                },
                child: Container(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              items.values.elementAt(oldindex)[index][0],
                              fit: BoxFit.cover,
                              height: 50,
                              width: 50,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text(items.values.elementAt(oldindex)[index][1]),
                              SizedBox(
                                width: 250,
                                child: Text(
                                  items.values.elementAt(oldindex)[index][2],
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 13,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        }
      ],
    );
  }
}
