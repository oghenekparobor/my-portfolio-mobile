import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSubSection extends StatelessWidget {
  const ContactSubSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: ElasticIn(
        delay: const Duration(milliseconds: 300),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'PHONE',
                style: Theme.of(context).textTheme.headline2!,
              ),
              GestureDetector(
                onTap: () => launchUrl(
                  Uri.parse('tel:+2349060257738'),
                ),
                child: Text(
                  '09060257738',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'EMAIL',
                style: Theme.of(context).textTheme.headline2!,
              ),
              GestureDetector(
                onTap: () => launchUrl(
                  Uri.parse('mailto:robor.eminokanju@gmail.com'),
                ),
                child: Text(
                  'ROBOR.EMINOKANJU@GMAIL.COM',
                  style: Theme.of(context).textTheme.headline5!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
