import 'package:craft_beer/detail.dart';
import 'package:craft_beer/resources/Fonts.dart';
import 'package:craft_beer/resources/colors.dart';
import 'package:craft_beer/resources/images.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            RichText(
              text: const TextSpan(text: "Craft Craft\nBeer\nAwards", style: textStyle34px700w, children: [
                WidgetSpan(child: SizedBox(width: 30.0)),
                TextSpan(
                  text: "IPA",
                  style: textStyleOrange34px700w,
                )
              ]),
            ),
            const SizedBox(height: 50.0),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 180.0,
                  decoration: const BoxDecoration(
                    color: AppColors.colorSecondary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      const SizedBox(width: 30.0),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.colorPrimary.withOpacity(0.1),
                                offset: const Offset(10, 10),
                                blurRadius: 10,
                                spreadRadius: 5)
                          ],
                        ),
                        child: Hero(
                          tag: "bottle",
                          child: Image.asset(Images.kIconBottle, height: 290),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 40.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 55.0,
                        width: 50.0,
                        decoration: const BoxDecoration(
                          color: AppColors.orange,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: const Center(child: Text("01", style: textStyleWhite18px600w)),
                      ),
                      const SizedBox(height: 30.0),
                      RichText(
                        text: const TextSpan(text: "Purple Rain\n", style: textStyleDarkHeavy24px700, children: [
                          WidgetSpan(child: SizedBox(height: 34)),
                          TextSpan(
                            text: "France",
                            style: textStyleSubText18px700w,
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 30.0,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
                    },
                    child: Container(
                      height: 65.0,
                      width: 65.0,
                      decoration: const BoxDecoration(
                        color: AppColors.colorPrimary,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(Images.kIconDetail),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50.0),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: Container(
                        decoration: const BoxDecoration(
                          color: AppColors.lightGray,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0)),
                        ),
                        child: Wrap(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(height: 30.0),
                                Row(
                                  children: [
                                    const SizedBox(width: 30.0),
                                    Container(
                                      height: 55.0,
                                      width: 50.0,
                                      decoration: const BoxDecoration(
                                        color: AppColors.lightGrayV2,
                                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                      ),
                                      child: const Center(child: Text("02", style: textStyleWhite18px600w)),
                                    ),
                                    const SizedBox(width: 30.0),
                                    Text("La Dodo", style: textStyleDarkHeavy24px700),
                                  ],
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                  Positioned.fill(
                    top: 105,
                    child: Container(
                        height: 110.0,
                        decoration: const BoxDecoration(
                          color: AppColors.colorSecondaryLight,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0)),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 30.0),
                            Container(
                              height: 55.0,
                              width: 50.0,
                              decoration: const BoxDecoration(
                                color: AppColors.orange,
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                              child: const Center(child: Text("03", style: textStyleWhite18px600w)),
                            ),
                            const SizedBox(width: 30.0),
                            const Text("Gallia", style: textStyleDarkHeavy24px700)
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      shadowColor: Colors.transparent,
      actions: [
        const SizedBox(width: 40.0),
        Image.asset(Images.kIconTrophy, height: 24.0, width: 24),
        const Spacer(),
        Image.asset(Images.kIconShare, height: 18.0, width: 18),
        const SizedBox(width: 50.0),
        Image.asset(Images.kIconMenu, height: 18.0, width: 24),
        const SizedBox(width: 30.0),
      ],
    );
  }
}
