import 'package:craft_beer/resources/images.dart';
import 'package:flutter/material.dart';

import 'resources/Fonts.dart';
import 'resources/colors.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 70.0),
                Row(
                  children: [
                    const SizedBox(width: 40.0),
                    Image.asset(Images.kIconDots, height: 18.0, width: 18),
                    const SizedBox(width: 50.0),
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(Images.kIconRight, height: 18.0, width: 24))
                  ],
                ),
                SizedBox(height: 70.0),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
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
                      SizedBox(height: 20.0),
                      const Text("Purple\nRain", style: textStyle34px700w),
                      SizedBox(height: 30.0),
                      const Text(
                        "Fascinating aroma from the Citra and Amarillo hops",
                        style: textStyleSubText16px500wL1,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width * .60,
                  height: 290.0,
                  decoration: const BoxDecoration(
                    color: AppColors.colorPrimaryLight,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        "Munich\nCaramel",
                        style: textStyleDark16px600w,
                      ),
                      Text(
                        "Citra\nAmarillo",
                        style: textStyleDark16px600w,
                      ),
                      Text(
                        "Pale Ale",
                        style: textStyleDark16px600w,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.0),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .60,
                      height: 250.0,
                      decoration: const BoxDecoration(
                        color: AppColors.colorSecondary,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30.0),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      right: 0,
                      left: 0,
                      child: Hero(
                        tag: "bottle",
                        child: Image.asset(
                          Images.kIconBottle,
                          height: MediaQuery.of(context).size.height * .50,
                        ),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("50 EBU", style: textStyle28px700w),
                    SizedBox(height: 8),
                    Text("Bitterness", style: textStyleSubText16px500w),
                    SizedBox(height: 30),
                    Text("5.5%", style: textStyle28px700w),
                    SizedBox(height: 8),
                    Text("Alcool/vol", style: textStyleSubText16px500w),
                    SizedBox(height: 20.0),
                    Container(
                      width: 90.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        color: AppColors.colorPrimary,
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: Center(child: Text("Taste !", style: textStyleWhite16px600w)),
                    ),
                    SizedBox(height: 90.0),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
