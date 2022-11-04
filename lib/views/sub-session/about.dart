import 'package:animate_do/animate_do.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSubSection extends StatelessWidget {
  const AboutSubSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var portfolio = [
      {
        'IMAGE':
            'https://res.cloudinary.com/oghenekparobor/image/upload/v1662626024/my-portfolio/Screenshot_2022-06-18_at_17.04.32_mro1pa_gwahag.png',
        'NAME': 'Renmoney MFB',
        'URL':
            'https://play.google.com/store/apps/details?id=com.renmoney.android',
      },
      {
        'IMAGE':
            'https://res.cloudinary.com/oghenekparobor/image/upload/v1662624971/my-portfolio/my-portfolio_Screenshot_2022-06-18_at_17.03.48_lyzhdg-q_25_1_serceq.png',
        'NAME': 'Chicken republic delta mall',
        'URL':
            'https://play.google.com/store/apps/details?id=com.chickenrepublicdeltamall',
      },
      {
        'IMAGE':
            'https://res.cloudinary.com/oghenekparobor/image/upload/v1662626959/my-portfolio/Screenshot_2022-06-18_at_17.04.11_sz3ufy_cek8l2.png',
        'NAME': 'Cravings',
        'URL': 'https://cravingsng.com/',
      },
      {
        'IMAGE':
            'https://res.cloudinary.com/oghenekparobor/image/upload/v1655568637/my-portfolio/alerte_e6uwd5.jpg',
        'NAME': 'Alerte generic',
        'URL':
            'https://play.google.com/store/apps/details?id=com.alerte.generic',
      },
      {
        'IMAGE':
            'https://res.cloudinary.com/oghenekparobor/image/upload/v1666136234/my-portfolio/unnamed_b3iz54.webp',
        'NAME': 'Detailor',
        'URL': 'https://play.google.com/store/apps/details?id=detailor.online',
      },
    ];

    return SlideInUp(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: [
            const SizedBox(height: 100),
            for (var i = 0; i < portfolio.length; i++)
              Padding(
                padding: const EdgeInsets.only(bottom: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Expanded(
                      flex: 2,
                      child: GestureDetector(
                        onTap: () async => launchUrl(
                          Uri.parse(portfolio[i]['URL']!),
                        ),
                        child: Column(
                          children: [
                            Text(
                              portfolio[i]['NAME']!,
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: 400,
                              height: 400,
                              child: FancyShimmerImage(
                                imageUrl: portfolio[i]['IMAGE']!,
                                boxFit: BoxFit.cover,
                                shimmerBackColor: Colors.grey.shade600,
                                shimmerBaseColor: Colors.grey.shade100,
                                errorWidget: Image.network(
                                  'https://aeroclub-issoire.fr/wp-content/uploads/2020/05/image-not-found-300x225.jpg',
                                  fit: BoxFit.cover,
                                ),
                                width: 400,
                                height: 400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
