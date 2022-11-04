import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_mobile/views/session/contact.dart';
import 'package:provider/provider.dart';

import '../service/service.dart';
import 'footer.dart';
import 'session/about.dart';
import 'session/home.dart';

class LeftMain extends StatefulWidget {
  const LeftMain({
    Key? key,
  }) : super(key: key);

  @override
  LeftMainState createState() => LeftMainState();
}

class LeftMainState extends State<LeftMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Consumer<HomeService>(
          builder: (context, value, child) {
            var nav = [
              'Home',
              'About',
              'Contact',
            ];

            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const ClampingScrollPhysics(),
              child: navItems(nav, value),
            );
          },
        ),
      ),
      body: Consumer<HomeService>(
        builder: (context, value, child) => Stack(
          children: [
            PageView(
              controller: value.leftPage,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: const [
                HomeSection(),
                AboutSection(),
                ContactSection(),
              ],
            ),
            if (value.size(context) > 500) const FooterLinks()
          ],
        ),
      ),
    );
  }

  Row navItems(List<String> nav, HomeService value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        for (var i = 0; i < nav.length; i++)
          TextButton(
            onPressed: () => value.nav(i),
            child: Text(
              nav[i],
              style: GoogleFonts.abel(
                color: i == value.currentPage ? Colors.white : Colors.white38,
              ),
            ),
          ),
      ],
    );
  }
}
