import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paymentapp/utils/custom_colors.dart';

class CustomMenu extends StatelessWidget {
  var menus = [
    {
      'title': 'Transaction',
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2232/2232688.png",
      'onClickUrl': 'report/dmt'
    },
    {
      'title': 'Transaction Report',
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2232/2232688.png",
      'onClickUrl': 'report/dmt'
    },
    {
      'title': 'Transaction Report',
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2232/2232688.png",
      'onClickUrl': 'report/dmt'
    },
    {
      'title': 'Transaction Report',
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2232/2232688.png",
      'onClickUrl': 'report/dmt'
    },
    {
      'title': 'Transaction Report',
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2232/2232688.png",
      'onClickUrl': 'report/dmt'
    },
    {
      'title': 'Transaction Report ',
      'iconUrl': "https://cdn-icons-png.flaticon.com/512/2232/2232688.png",
      'onClickUrl': 'report/dmt'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 16),
      itemCount: 6,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        return _buildMenu(menus[index]['iconUrl'], menus[index]['title'],
            menus[index]['onClickUrl']);
      },
    );
  }

  _buildMenu(imagePath, title, onClickUrl) {
    return Container(
        height: 120,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: secondaryTextColor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              imagePath,
              height: 35,
              width: 35,
              //fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(title,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 10,
                    color: primaryTextColor,
                    fontWeight: FontWeight.bold,
                    overflow: TextOverflow.ellipsis)),
          ],
        ));
  }
}
