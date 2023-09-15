import 'package:anasabafone/Screens/AboutScreen.dart';
import 'package:anasabafone/Screens/DetialScreen.dart';
import 'package:anasabafone/Screens/SettingsScreen.dart';
import 'package:anasabafone/Screens/VerticalAdsScreen.dart';
import 'package:anasabafone/components/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

const Widget verticalSpacing = SizedBox(
  height: 50,
);

const Widget horizatolSpacing = SizedBox(
  width: 30,
);

AppBar customeAppBar(
    {required List title,
    required BuildContext context,
    bool isBottom = false,
    int tabLength = 0,
    bool isScrollable = false,
    List<String>? tabTitle}) {
  return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.lock_outline_rounded),
        color: Colors.white,
        onPressed: () {},
      ),
      title: Text(title[currentIndex]),
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
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AboutScreen()));
            }
          },
        ),
      ],
      bottom: isBottom
          ? PreferredSize(
              preferredSize: const Size(double.infinity, 40),
              child: Material(
                child: TabBar(
                  isScrollable: isScrollable,
                  labelStyle: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.bold),
                  unselectedLabelStyle: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.normal),
                  tabs: [
                    for (int index = 0; index < tabLength; index++) ...{
                      Tab(
                        child: Text(
                          tabTitle![index],
                        ),
                      ),
                    }
                  ],
                ),
              ),
            )
          : null);
}

Widget bannerAds({
  required IconData icon,
  required String title,
  required BuildContext context,
}) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        VerticalAdsScreen(title: title, items: const [
                          [
                            'assets/images/2.jpg',
                            'باقة أنتر 10 على 10',
                            'خلي النت شغال و لايهمك شيء ... باقة أنتر 10 على 10'
                          ],
                          [
                            'assets/images/2.jpg',
                            'باقة أنتر 10 على 10',
                            'خلي النت شغال و لايهمك شيء ... باقة أنتر 10 على 10'
                          ]
                        ])));
              },
              child: Text(
                'عرض الكل',
                style: TextStyle(color: Colors.grey[700], fontSize: 15),
              ),
            ),
            const Spacer(),
            Icon(
              icon,
              color: primaryColor,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 150,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 30),
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) => GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DetailScreen(
                          title: 'باقة أنتر 10 على 10',
                          subTitle:
                              'خلي النت شغال و لايهمك شيء ... باقة أنتر 10 على 10',
                          image: 'assets/images/2.jpg',
                          isLocation: false,
                        )));
              },
              child: Row(
                children: [
                  Container(
                    width: 250,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 7,
                            offset: const Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/2.jpg',
                            width: 70,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          width: 180,
                          padding: const EdgeInsets.all(8.0),
                          child: const Column(
                            children: [
                              Text(
                                'باقة أنتر 10 على 10',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'خلي النت شغال و لايهمك شيء ... باقة أنتر 10 على 10',
                                style:
                                    TextStyle(overflow: TextOverflow.ellipsis),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget largeAds({
  required IconData icon,
  required String title,
  required String subTitle,
  required BuildContext context,
}) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      children: [
        Row(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        VerticalAdsScreen(title: title, items: const [
                          [
                            'assets/images/2.jpg',
                            'باقة أنتر 10 على 10',
                            'خلي النت شغال و لايهمك شيء ... باقة أنتر 10 على 10'
                          ],
                          [
                            'assets/images/2.jpg',
                            'باقة أنتر 10 على 10',
                            'خلي النت شغال و لايهمك شيء ... باقة أنتر 10 على 10'
                          ]
                        ])));
              },
              child: Text(
                'عرض الكل',
                style: TextStyle(color: Colors.grey[700], fontSize: 15),
              ),
            ),
            const Spacer(),
            Icon(
              icon,
              color: primaryColor,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 150,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (BuildContext context, int index) =>
                horizatolSpacing,
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) => GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailScreen(
                          title: title,
                          subTitle: subTitle,
                          image: 'assets/images/2.jpg',
                          isLocation: false,
                        )));
              },
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 7,
                            offset: const Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/2.jpg',
                            fit: BoxFit.cover,
                            height: 105,
                          ),
                        ),
                        Text(subTitle, style: TextStyle(color: primaryColor)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 7),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class Section extends MultiSliver {
  Section({
    Key? key,
    required String title,
    Color headerColor = Colors.white,
    Color titleColor = Colors.black,
    required List<Widget> items,
  }) : super(
          key: key,
          pushPinnedChildren: false,
          children: [
            SliverPinnedHeader(
              child: ColoredBox(
                color: headerColor,
                child: ListTile(
                  textColor: titleColor,
                  title: Center(
                      child: Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  )),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate.fixed(items),
            ),
          ],
        );
}

Widget serviceList({required List items, isLocation = false}) {
  return ListView.separated(
      itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        title: items[index][1],
                        subTitle: items[index][2],
                        image: items[index][0],
                        isLocation: isLocation,
                      )));
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          items[index][0],
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
                          Text(items[index][1]),
                          SizedBox(
                            width: 250,
                            child: Text(
                              items[index][2],
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
          ),
      separatorBuilder: (context, index) => const Divider(height: 2),
      itemCount: items.length);
}

Widget profilBalance() {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  const Text('Sep 8, 2023 2:52 PM'),
                  Icon(
                    Icons.refresh,
                    color: primaryColor,
                  )
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.sim_card_rounded,
                color: Colors.green,
              ),
              Text(
                'شريحة دفع مسبق',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
            ],
          ),
          const Row(
            children: [
              Spacer(),
              Text('إستقبال وإرسال حتى 20 يونيو 2024'),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Stack(children: [
            Center(
              child: Container(
                  height: 155,
                  width: 155,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(100)),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '0.06',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'يوم \t 309 ',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(Icons.incomplete_circle_rounded,
                              color: Colors.white)
                        ],
                      )
                    ],
                  )),
            ),
            Center(
              child: CircularPercentIndicator(
                radius: 80,
                percent: 0.8,
                progressColor: Colors.green,
                animation: true,
              ),
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'واحدات',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
          ),
          const Text(
            'تنتهي 20 يوليو 2024',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          Container(
              padding: const EdgeInsets.all(20),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Icon(IconlyBroken.arrowDown2),
                      Spacer(),
                      Text('حسابات أخرى'),
                    ],
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Column(
                        children: [
                          Icon(
                            Icons.four_g_mobiledata,
                            color: Color.fromARGB(255, 55, 126, 57),
                            size: 25,
                          ),
                          Text('ميجا \t 0.00 ')
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Icon(
                            Icons.data_saver_off_rounded,
                            color: Color.fromARGB(255, 55, 126, 57),
                            size: 25,
                          ),
                          Text('ميجا \t 0.00 ')
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Icon(
                            IconlyBroken.call,
                            color: Color.fromARGB(255, 55, 126, 57),
                            size: 25,
                          ),
                          Text('دقيقة \t 0.00 ')
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Icon(
                            IconlyBroken.chat,
                            color: Color.fromARGB(255, 55, 126, 57),
                            size: 25,
                          ),
                          Text('رسالة \t 0.00 ')
                        ],
                      ),
                      Spacer(),
                    ],
                  )
                ],
              )),
        ],
      ),
    ),
  );
}

Widget profileInvoice() {
  return Container();
}

Widget defaultButton(
    {required double width,
    required Function() function,
    required String label,
    Color textColor = Colors.white,
    double radius = 8.0}) {
  return Container(
      width: width,
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(radius)),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          label,
          style: TextStyle(
              color: textColor, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ));
}

// General Form

Widget defaultForm({
  required TextEditingController controller,
  required TextInputType type,
  required IconData prefixIcon,
  IconData? sufixIcon,
  bool validate = false,
  String validationMessage = 'This field is required',
  bool isPassword = false,
  required String label,
  required Function() suffixIconPressed,
  Function()? onSubmit,
}) {
  return TextFormField(
    controller: controller,
    obscureText: isPassword == true ? true : false,
    keyboardType: type,
    validator: validate == true
        ? (value) {
            if (value!.isEmpty) {
              return validationMessage;
            }
            if (isPassword == true && value.length < 4) {
              return 'The Password is too short';
            }
            return null;
          }
        : null,
    onTap: onSubmit,
    decoration: InputDecoration(
      prefixIcon: Icon(prefixIcon),
      suffixIcon: sufixIcon != null
          ? GestureDetector(
              onTap: suffixIconPressed,
              child: Icon(sufixIcon),
            )
          : null,
      labelText: label,
      border: OutlineInputBorder(
          borderSide:
              BorderSide(style: BorderStyle.solid, color: primaryColor)),
    ),
  );
}

messanger(
    {required BuildContext context,
    required String message,
    bool status = true}) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    behavior: SnackBarBehavior.floating,
    backgroundColor: status ? primaryColor : Colors.redAccent,
  ));
}
