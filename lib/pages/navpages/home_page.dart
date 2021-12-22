import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/pages/tab/tab_view.dart';
import 'package:flutter_cubit/widget/app_large_text.dart';
import 'package:flutter_cubit/widget/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var image = {
    "balloning.png": "Balloning",
    "hiking.png": "Hiking",
    "kayaking.png": "Kayaking",
    "snorkling.png": "Snorkling ",
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 30,
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.black54,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.5)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
              ),
              child: const AppLargeText(text: "Discover"),
            ),
            const SizedBox(
              height: 20,
            ),
            const TabView(),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppLargeText(
                    text: "Explore more",
                    size: 22,
                  ),
                  AppText(
                    text: "See all",
                    color: AppColors.textColor1,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 20,
              ),
              height: 120,
              width: double.maxFinite,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: const EdgeInsets.only(
                        right: 20,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(
                                    "img/" + image.keys.elementAt(index)),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          AppText(
                            text: image.values.elementAt(index),
                            color: AppColors.textColor2,
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
