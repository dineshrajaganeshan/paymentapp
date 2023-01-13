import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paymentapp/utils/custom_colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar(this.selectedIndex, {Key? key}) : super(key: key);

  RxInt selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 60,
        width: Get.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: primaryButtonColor,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(child: _buildMenu(0, Icons.home, 'Home', () {})),
            Expanded(child: _buildMenu(1, Icons.dashboard, 'Dashboard', () {})),
            Expanded(child: _buildMenu(2, Icons.person, 'Profile', () {})),
            Expanded(child: _buildMenu(3, Icons.person, 'Profile', () {})),
          ],
        ),
      ),
    );
  }

  _buildMenu(
    int index,
    IconData icon,
    String title,
    Function() onTab,
  ) {
    return InkWell(
      onTap: () {
        if (selectedIndex.value != index) {
          selectedIndex(index);
          onTab();
        }
      },
      child: Obx(
        () => Container(
          height: 35,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: selectedIndex.value == index ? textColor : null,
            borderRadius: BorderRadius.circular(12),
          ),

          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 22,
                  color: selectedIndex.value == index
                      ? secondaryButtonColor
                      : textColor,
                ),
                selectedIndex.value == index
                    ? Text(
                        title,
                        style: const TextStyle(
                          fontSize: 12,
                          color: primaryTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  itemTapped(index) {
    print(index);
  }
}
