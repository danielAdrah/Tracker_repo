import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:tracker/common/color_extensions.dart';
import '../../view/settings/settings_view.dart';
import 'package:card_swiper/card_swiper.dart';

class CardsView extends StatefulWidget {
  const CardsView({super.key});

  @override
  State<CardsView> createState() => _CardsViewState();
}

class _CardsViewState extends State<CardsView> {
  bool isSubscripe = true;
  List subArr = [
    {"name": "Spotify", "icon": "assets/img/spotify_logo.png", "price": "5.66"},
    {
      "name": "Youtube Premium",
      "icon": "assets/img/youtube_logo.png",
      "price": "12.6"
    },
    {
      "name": "Microsoft Ondrive",
      "icon": "assets/img/onedrive_logo.png",
      "price": "9.5"
    },
    {"name": "Netflix", "icon": "assets/img/netflix_logo.png", "price": "20.8"},
  ];
  List carArr = [
    {"name": "Lelouch", "number": "**** **** **** 3256", "date": "04/3"},
    {"name": "Daniel", "number": "**** **** **** 2222", "date": "05/3"},
    {"name": "Jalal", "number": "**** **** **** 3566", "date": "01/3"},
  ];

  SwiperController controller = SwiperController();
  Widget buildSwiper() {
    return Swiper(
      itemCount: carArr.length,
      customLayoutOption: CustomLayoutOption(startIndex: -1, stateCount: 3)
        ..addRotate([-45.0 / 180, 0.0, 45.0 / 180])
        ..addTranslate([
          const Offset(-370.0, -40.0),
          Offset.zero,
          const Offset(370.0, -40.0)
        ]),
      fade: 1.0,
      onIndexChanged: (index) {
        print(index);
      },
      scale: 0.8,
      itemWidth: 232,
      itemHeight: 350,
      controller: controller,
      layout: SwiperLayout.STACK,
      viewportFraction: 0.8,
      itemBuilder: (context, index) {
        var cObj = carArr[index] as Map? ?? {};
        return Container(
          decoration: BoxDecoration(
              color: TColor.gray70,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                ),
              ]),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                "assets/img/card_blank.png",
                width: 232,
                height: 350,
              ),
              Column(
                children: [
                  const SizedBox(height: 30),
                  Image.asset(
                    "assets/img/mastercard_logo.png",
                    width: 50,
                  ),
                  const SizedBox(height: 9),
                  Text(
                    "Virtual Card ",
                    style: TextStyle(
                        color: TColor.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 110),
                  Text(
                    cObj["name"] ?? "Lelouch ",
                    style: TextStyle(
                        color: TColor.gray20,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    cObj["number"] ?? "**** **** **** 5584 ",
                    style: TextStyle(
                        color: TColor.gray20,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    cObj["date"] ?? "04/3",
                    style: TextStyle(
                        color: TColor.gray20,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      axisDirection: AxisDirection.right,
      autoplayDisableOnInteraction: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.gray,
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: double.infinity,
              height: 600,
              child: buildSwiper(),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Credit Cards ",
                                style: TextStyle(
                                  color: TColor.gray30,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SettingsView()));
                                },
                                icon: Image.asset(
                                  "assets/img/settings.png",
                                  width: 25,
                                  height: 25,
                                  color: TColor.gray30,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 400),
                    Text(
                      "Subscription",
                      style: TextStyle(
                          color: TColor.gray30,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: subArr.map((sObj) {
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 10),
                          child: Image.asset(
                            sObj["icon"],
                            width: 40,
                            height: 40,
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        color: TColor.gray70.withOpacity(0.5),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: InkWell(
                              onTap: () {},
                              child: DottedBorder(
                                dashPattern: const [5, 4],
                                color: TColor.border.withOpacity(0.3),
                                strokeWidth: 1,
                                radius: const Radius.circular(15),
                                borderType: BorderType.RRect,
                                child: Container(
                                  height: 64,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Add New Card",
                                        style: TextStyle(
                                            color: TColor.gray30,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Image.asset(
                                        "assets/img/add.png",
                                        width: 15,
                                        height: 15,
                                        color: TColor.gray30,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 80),
                          Text(
                            "Be Carful Using Your Cards",
                            style:
                                TextStyle(color: TColor.gray20, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Container(
            //   decoration: BoxDecoration(
            //     color: TColor.gray70.withOpacity(0.5),
            //     borderRadius: const BorderRadius.only(
            //       bottomLeft: Radius.circular(25),
            //       bottomRight: Radius.circular(25),
            //     ),
            //   ),
            //    child: ,
            // ),
          ],
        ),
      ),
    );
  }
}
