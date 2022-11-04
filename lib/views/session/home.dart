import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: OrientationBuilder(
        builder: (context, orientation) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Oghenekparobor',
              style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: orientation != Orientation.landscape ? 18 : 30),
            ),
          ],
        ),
      ),
    );
  }
}
