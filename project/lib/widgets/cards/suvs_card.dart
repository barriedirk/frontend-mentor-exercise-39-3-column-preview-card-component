import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:project/utils/app_constants.dart';
import 'package:project/widgets/cards/calculate_width.dart';
import 'package:project/widgets/buttons/hover_button.dart';

class SuvsCardWidget extends StatelessWidget {
  const SuvsCardWidget({super.key});

  void _learnMore() {
    print('Suvs Card - Button pressed!');
  }

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/images/icon-suvs.svg';
    final screenWidth = MediaQuery.of(context).size.width;
    final finalWidth = calculateCardWidth(screenWidth);

    return Container(
      alignment: Alignment.centerLeft,
      height: screenWidth >= AppConstants.bkpTablet ? 500 : 442,
      width: finalWidth,
      padding: const EdgeInsets.all(50.0),
      decoration: BoxDecoration(color: Color(0xFF006971)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SvgPicture.asset(assetName, width: 64, height: 40),
            SizedBox(height: 40),
            Text(
              'SUVs',
              style: GoogleFonts.lexendDeca(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF2F2F2),
                height: 1.65,
              ),
            ),
            SizedBox(height: 35),
            Text(
              'Take an SUV for its spacious interior, power, and versatility. Perfect for your next family vacation and off-road adventures.',
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
