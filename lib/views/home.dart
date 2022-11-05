import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_mobile/service/service.dart';
import 'package:portfolio_mobile/views/right_main.dart';
import 'package:provider/provider.dart';

import 'footer.dart';
import 'left_main.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Consumer<HomeService>(
        builder: (context, value, child) => OrientationBuilder(
          builder: (context, orientation) =>
              orientation == Orientation.landscape
                  ? Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: SlideInRight(
                            child: const LeftMain(),
                          ),
                        ),
                        const Expanded(
                          flex: 5,
                          child: RightMain(),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: SlideInRight(
                            child: const LeftMain(),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Stack(
                            children: const [
                              RightMain(),
                              FooterLinks(),
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
