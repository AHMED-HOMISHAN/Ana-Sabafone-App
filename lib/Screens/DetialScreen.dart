import 'package:anasabafone/components/consts.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String title;
  final String subTitle;
  final String image;
  final bool isLocation;
  const DetailScreen(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image,
       required this.isLocation});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 2,
        ),
        body: Column(
          children: [
            Stack(alignment: Alignment.bottomCenter, children: [
              Image.asset(
                widget.image,
                width: double.infinity,
                height: 230,
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(140, 33, 149, 243),
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          iconSize: 20,
                          icon: const Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(140, 33, 149, 243),
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        widget.title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ]),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    widget.subTitle,
                    textAlign: TextAlign.end,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: widget.isLocation == false
            ? Container(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    const Spacer(),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.done_rounded,
                              color: Colors.white),
                          label: const Text(
                            'أشتراك',
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                ),
              )
            : const SizedBox());
  }
}
