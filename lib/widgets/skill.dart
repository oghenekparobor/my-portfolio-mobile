import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillSet extends StatefulWidget {
  const SkillSet({
    Key? key,
  }) : super(key: key);

  @override
  State<SkillSet> createState() => _SkillSetState();
}

class _SkillSetState extends State<SkillSet> {
  final bool _animate = true;

  @override
  Widget build(BuildContext context) {
    var skills = [
      {
        'technology': 'Dart',
        'percent': .9,
      },
      {
        'technology': 'Figma',
        'percent': .58,
      },
      {
        'technology': 'Flutter',
        'percent': .9,
      },
      {
        'technology': 'Git',
        'percent': .7,
      },
      {
        'technology': 'Javascript',
        'percent': .51,
      },
      {
        'technology': 'MySQL',
        'percent': .65,
      },
      {
        'technology': 'PHP',
        'percent': .63,
      },
      {
        'technology': 'Rust',
        'percent': .25,
      },
    ];

    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (var i = 0; i < skills.length; i++)
            ElasticIn(
              animate: _animate,
              delay: const Duration(milliseconds: 1000),
              child: Container(
                margin: const EdgeInsets.only(bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      skills[i]['technology'] as String,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const SizedBox(height: 5),
                    Container(
                      height: 10,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.black12,
                      ),
                      alignment: Alignment.centerLeft,
                      child: LayoutBuilder(
                        builder: (_, c) => Container(
                          width:
                              (c.maxWidth * (skills[i]['percent'] as double)),
                          color: const Color(0xffD69976),
                          height: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
