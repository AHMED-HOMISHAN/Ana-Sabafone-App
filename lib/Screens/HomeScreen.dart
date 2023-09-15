import 'package:anasabafone/components/components.dart';
import 'package:anasabafone/components/consts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customeAppBar(
          context: context,
          title: bottomNavigatorTitle,
          isBottom: currentIndex == 0 || currentIndex == 3 ? false : true),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(2, 80, 2, 10),
                  child: CarouselSlider(
                      items: [
                        Image.asset(
                          'assets/images/2.jpg',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/images/1.jpg',
                          fit: BoxFit.cover,
                        )
                      ],
                      options: CarouselOptions(
                          height: 210.0,
                          initialPage: 0,
                          clipBehavior: Clip.antiAlias,
                          viewportFraction: 1.0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          autoPlayAnimationDuration: const Duration(seconds: 1),
                          autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
                          scrollDirection: Axis.horizontal)),
                ),
                bannerAds(
                  context: context,
                  icon: Icons.new_releases_outlined,
                  title: 'ما هو جديد ؟',
                ),

                //  عروض
                largeAds(
                    context: context,
                    icon: Icons.card_giftcard_rounded,
                    subTitle: 'عرض الجيل الرابح',
                    title: 'عروض'),
                bannerAds(
                  context: context,
                  icon: Icons.thumb_up_alt_outlined,
                  title: ' المميزة ',
                ),
                largeAds(
                    context: context,
                    icon: Icons.newspaper_rounded,
                    title: 'الاخبار',
                    subTitle: 'اخبار')
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    prefixIcon: Icon(IconlyBroken.search),
                    hintText: 'بحث..',
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
