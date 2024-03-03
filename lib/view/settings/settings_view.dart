import 'package:flutter/material.dart';
import '../../common/color_extensions.dart';
import '../../common_widget/icon_item_row.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.gray,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset(
                          "assets/img/back.png",
                          width: 25,
                          height: 25,
                          color: TColor.gray30,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Settings",
                          style: TextStyle(color: TColor.gray30, fontSize: 16)),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/img/u1.png",
                    width: 70,
                    height: 70,
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Lelocuh",
                      style: TextStyle(
                          color: TColor.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800)),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("zero@gmail.com",
                      style: TextStyle(
                          color: TColor.gray30,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ],
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: TColor.gray30.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15),
                      border:
                          Border.all(color: TColor.border.withOpacity(0.15))),
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                        color: TColor.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15, bottom: 2, left: 10),
                      child: Text(
                        "General",
                        style: TextStyle(
                            color: TColor.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      // height: media.width * 1,
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, right: 20, bottom: 20),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: TColor.gray40.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Column(children: [
                              const IconItemRow(
                                title: "Security ",
                                icon: "assets/img/face_id.png",
                                value: "FaceID",
                              ),
                              IconItemSwitchRow(
                                title: "iCould sync ",
                                icon: "assets/img/icloud.png",
                                value: isActive,
                                didChange: (newVal) {
                                  setState(() {
                                    isActive = newVal;
                                  });
                                },
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15, bottom: 8, left: 10),
                      child: Text(
                        "My Subscription",
                        style: TextStyle(
                            color: TColor.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      // height: media.width * 1,
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, right: 20, bottom: 20),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: TColor.gray40.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Column(children: const [
                              IconItemRow(
                                title: "Sorting ",
                                icon: "assets/img/sorting.png",
                                value: "Date",
                              ),
                              IconItemRow(
                                title: "Summary ",
                                icon: "assets/img/chart.png",
                                value: "Average",
                              ),
                              IconItemRow(
                                title: "Default Currency ",
                                icon: "assets/img/money.png",
                                value: "USD(\$) ",
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15, bottom: 8, left: 10),
                      child: Text(
                        "Appearance",
                        style: TextStyle(
                            color: TColor.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      // height: media.width * 1,
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, right: 20, bottom: 20),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: TColor.gray40.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Column(children: const [
                              IconItemRow(
                                title: "App Icon ",
                                icon: "assets/img/app_icon.png",
                                value: "Default",
                              ),
                              IconItemRow(
                                title: "Theme ",
                                icon: "assets/img/light_theme.png",
                                value: "Dark",
                              ),
                              IconItemRow(
                                title: "Font ",
                                icon: "assets/img/font.png",
                                value: "Inter",
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
