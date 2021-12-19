import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/models/onboard_model.dart';
import 'package:flutter_cubit/widget/app_large_text.dart';
import 'package:flutter_cubit/widget/app_text.dart';
import 'package:flutter_cubit/widget/responsive_button.dart';
import 'package:provider/provider.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final onboardData = Provider.of<OnboardItemsModel>(context, listen: false);
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: onboardData.items.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(onboardData.items[index].imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(
                          text: onboardData.items[index].headings,
                        ),
                        AppText(
                          text: onboardData.items[index].title,
                          size: 30,
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 250,
                          child: AppText(
                            text: onboardData.items[index].description,
                            color: AppColors.textColor2,
                          ),
                        ),
                        const SizedBox(height: 40),
                        ResponsiveButton(
                            width: 120,
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/mainPage');
                            }),
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDot) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 3),
                          width: 8,
                          height: index == indexDot ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDot
                                ? AppColors.mainColor
                                : AppColors.mainColor.withOpacity(0.5),
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
