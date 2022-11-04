import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../service/service.dart';

class FooterLinks extends StatelessWidget {
  const FooterLinks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeService>(
      builder: (context, value, child) => Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: value.size(context) < 500
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(
                  Entypo.twitter,
                  color: Colors.white38,
                ),
                onPressed: () async =>
                    launchUrl(Uri.parse('https://twitter.com/kpa_robor')),
              ),
              IconButton(
                icon: const Icon(
                  Entypo.linkedin,
                  color: Colors.white38,
                ),
                onPressed: () async => launchUrl(Uri.parse(
                    'https://www.linkedin.com/in/oghenekparobor-eminokanju-ab9038180/')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
