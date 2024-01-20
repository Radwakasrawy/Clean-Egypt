import 'package:clean_egypt/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgThumbsUp,
      activeIcon: ImageConstant.imgThumbsUp,
      type: BottomBarEnum.Thumbsup,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLinkedinWhiteA70001,
      activeIcon: ImageConstant.imgLinkedinWhiteA70001,
      type: BottomBarEnum.Linkedinwhitea70001,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgContrastWhiteA70001,
      activeIcon: ImageConstant.imgContrastWhiteA70001,
      type: BottomBarEnum.Contrastwhitea70001,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLockWhiteA70001,
      activeIcon: ImageConstant.imgLockWhiteA70001,
      type: BottomBarEnum.Lockwhitea70001,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.v,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup388,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 29.v,
              width: 31.h,
              color: appTheme.whiteA70001,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 27.adaptSize,
              width: 27.adaptSize,
              color: appTheme.whiteA70001,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Thumbsup,
  Linkedinwhitea70001,
  Contrastwhitea70001,
  Lockwhitea70001,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
