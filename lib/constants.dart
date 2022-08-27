import 'package:flutter/material.dart';

const KMainColor = Color(0xff1b5e20);

const kPaddingContainer = 8.0;

const kScreenTitle = Text(
  "D0NE",
  style: TextStyle(fontFamily: 'BebasNeue', fontSize: 40),
);

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  // const MyAppBar({ Key? key }) : super(key: key);

  // final String screenTitle;

  // MyAppBar({required this.screenTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: kScreenTitle,
      centerTitle: true,
      backgroundColor: KMainColor,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

const kContainerColor = Color(0xff81c784);
