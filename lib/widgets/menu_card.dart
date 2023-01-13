import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomMenuCard extends StatelessWidget {
  CustomMenuCard({Key? key}) : super(key: key);

  var menus = [
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Title",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        Card(
            elevation: 12.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              padding: const EdgeInsets.only(top: 16),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.1,
                ),
                itemCount: menus.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  return _buildMenu(menus[index]['iconUrl'],
                      menus[index]['title'], menus[index]['onClickUrl']);
                },
              ),
            )),
      ],
    );
  }

  _buildMenu(imagePath, title, onClickUrl) {
    return InkWell(
      onTap: null,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.shade50,
            ),
            child: Image.network(
              imagePath,
            ),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 14,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
