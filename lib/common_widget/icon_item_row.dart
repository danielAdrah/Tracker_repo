import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/color_extensions.dart';

class IconItemRow extends StatelessWidget {
  final String title;
  final String value;
  final String icon;
  const IconItemRow(
      {super.key,
      required this.title,
      required this.value,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Row(
        children: [
          Image.asset(
            icon,
            width: 20,
            height: 20,
            color: TColor.gray20,
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: TextStyle(
                color: TColor.white, fontSize: 14, fontWeight: FontWeight.w600),
          ),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: TColor.gray30,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Image.asset(
            "assets/img/next.png",
            width: 12,
            height: 12,
            color: TColor.gray30,
          ),
        ],
      ),
    );
  }
}

class IconItemSwitchRow extends StatelessWidget {
  final String title;
  final bool value;
  final String icon;
  final Function(bool) didChange;
  const IconItemSwitchRow({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
    required this.didChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Row(
        children: [
          Image.asset(
            icon,
            width: 20,
            height: 20,
            color: TColor.gray20,
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: TextStyle(
                color: TColor.white, fontSize: 14, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          const SizedBox(
            width: 8,
          ),
          Switch(value: value, onChanged: didChange),
        ],
      ),
    );
  }
}
