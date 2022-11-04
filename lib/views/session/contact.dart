import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Say Hi',
            style: Theme.of(context).textTheme.headline1,
          ),
          // SingleChildScrollView(
          //   physics: const ClampingScrollPhysics(),
          //   child: Text(
          //     'I am available and open to grab a coffee, consult and converse with.',
          //     textAlign: TextAlign.start,
          //     maxLines: 3,
          //     overflow: TextOverflow.ellipsis,
          //     style: GoogleFonts.abel(
          //       color: Colors.white54,
          //       height: 1.2,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
