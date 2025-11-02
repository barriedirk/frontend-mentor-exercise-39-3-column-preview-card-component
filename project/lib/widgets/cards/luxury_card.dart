import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/widgets/buttons/hover_button.dart';

class LuxuryCardWidget extends StatelessWidget {
  const LuxuryCardWidget({super.key});

  void _learnMore() {
    print('Suvs Card - Button pressed!');
  }

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/images/icon-luxury.svg';

    final screenWidth = MediaQuery.of(context).size.width;
    const double maxWidth = 608.0;
    const double targetWidth = 325.0;

    double containerWidth = targetWidth;

    if (screenWidth > maxWidth) {
      containerWidth = maxWidth;
    } else if (screenWidth > targetWidth) {}

    final finalWidth = (screenWidth > maxWidth) ? maxWidth : screenWidth * 0.9;

    return Center(
      child: Container(
        height: 442,
        width: finalWidth,
        padding: const EdgeInsets.all(50.0),
        decoration: BoxDecoration(
          color: Color(0xFF004140),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SvgPicture.asset(assetName, width: 64, height: 40),
                SizedBox(height: 40),
                Text(
                  'Luxury',
                  style: GoogleFonts.lexendDeca(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF2F2F2),
                    height: 1.65,
                  ),
                ),
                SizedBox(height: 35),
                Text(
                  'Cruise in the best car brands without the bloated prices. Enjoy the enhanced comfort of a luxury rental and arrive in style. ',
                  style: GoogleFonts.lexendDeca(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    height: 1.65,
                  ),
                ),
                SizedBox(height: 22),
                HoverButtonWidget(
                  labelText: 'Learn More',
                  onPressed: _learnMore,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
