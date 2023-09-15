import 'package:anasabafone/Screens/BalanceLayout.dart';
import 'package:anasabafone/Screens/HomeScreen.dart';
import 'package:anasabafone/Screens/LocationsScreen.dart';
import 'package:anasabafone/Screens/Profile.dart';
import 'package:anasabafone/Screens/ServicesScreen.dart';
import 'package:flutter/material.dart';

Color primaryColor = const Color.fromARGB(255, 34, 82, 155);

List<Widget> bottomNavigatorScreen = const [
  HomeScreen(),
  BalanceLayoutScreen(),
  ServicesScreen(),
  LocationsScreen(),
  ProfileScreen(),
];

List<String> bottomNavigatorTitle = const [
  ' أنا سبافون',
  'باقات سبافون',
  'خدمات سبأفون',
  'مركز خدمة سبأفون',
];

int currentIndex = 0;

List<List<String>> items = [
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
];
