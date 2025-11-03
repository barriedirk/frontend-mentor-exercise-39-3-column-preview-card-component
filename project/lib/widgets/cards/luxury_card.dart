import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:project/utils/app_constants.dart';
import 'package:project/widgets/cards/calculate_width.dart';
import 'package:project/widgets/buttons/hover_button.dart';

class LuxuryCardWidget extends StatelessWidget {
  const LuxuryCardWidget({super.key});

  void _learnMore() {
    print('Suvs Card - Button pressed!');
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const String assetName = 'assets/images/icon-luxury.svg';
    final finalWidth = calculateCardWidth(screenWidth);
    final borderRadius = screenWidth >= AppConstants.cardBKPScreen
        ? BorderRadius.only(
            topRight: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          )
        : BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          );

    return Container(
      alignment: Alignment.topLeft,
      height: screenWidth >= AppConstants.bkpTablet ? 500 : 442,
      width: finalWidth,
      padding: const EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        color: Color(0xFF004140),
        borderRadius: borderRadius,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            HoverButtonWidget(labelText: 'Learn More', onPressed: _learnMore),
          ],
        ),
      ),
    );
  }
}
