import 'package:animate_do/animate_do.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/skill.dart';

class HomeSubSection extends StatelessWidget {
  const HomeSubSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Row(
        children: [
          Expanded(
            child: SlideInDown(
              child: Column(
                children: [
                  Expanded(
                    flex: 8,
                    child: Container(
                      color: const Color.fromRGBO(47, 43, 49, 1),
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: FancyShimmerImage(
                        imageUrl:
                            'https://res.cloudinary.com/oghenekparobor/image/upload/v1662622827/my-portfolio/my-portfolio_IMG_4306_agpm0q-q_20_lhrihk.jpg',
                        boxFit: BoxFit.cover,
                        shimmerBackColor: Colors.grey.shade600,
                        shimmerBaseColor: Colors.grey.shade100,
                        errorWidget: Image.network(
                          'https://aeroclub-issoire.fr/wp-content/uploads/2020/05/image-not-found-300x225.jpg',
                          fit: BoxFit.cover,
                        ),
                        width: double.infinity,
                        height: double.maxFinite,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          MediaQuery.of(context).orientation ==
                                  Orientation.landscape
                              ? const SizedBox()
                              : Expanded(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Text(
                                          'About me',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2,
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          'A Flutter developer with 5+ year experience in mobile development. Timely delivery and analytical thinking are my superpowers.',
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                          const SizedBox(height: 5),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              onPressed: () async => launchUrl(
                                Uri.parse(
                                  'https://docs.google.com/document/d/1X0z5hf0YTtjTzhdRdQCLb6tNiukYp5O5V1sJb2jqh1U/edit?usp=sharing',
                                ),
                              ),
                              child: Text(
                                'Download Resume',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .copyWith(color: const Color(0xffD69976)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SlideInUp(
              child: Container(
                color: Theme.of(context).primaryColor,
                child: Column(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 30,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Skills',
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'I am proficient in',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            const SizedBox(height: 30),
                            const Expanded(child: SkillSet()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
