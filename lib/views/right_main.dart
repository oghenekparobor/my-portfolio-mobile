import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../service/service.dart';
import 'sub-session/about.dart';
import 'sub-session/contact.dart';
import 'sub-session/home.dart';

class RightMain extends StatefulWidget {
  const RightMain({Key? key}) : super(key: key);

  @override
  RightMainState createState() => RightMainState();
}

class RightMainState extends State<RightMain> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HomeService>(
        builder: (context, value, child) => PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: value.rightPage,
          scrollDirection: Axis.vertical,
          children: const [
            HomeSubSection(),
            AboutSubSection(),
            ContactSubSection(),
          ],
        ),
      ),
    );
  }
}
