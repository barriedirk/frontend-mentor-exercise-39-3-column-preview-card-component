import 'package:project/utils/app_constants.dart';

double calculateCardWidth(double screenWidth) {
  if (screenWidth >= AppConstants.cardBKPScreen) {
    return AppConstants.cardWFixed;
  } else if (screenWidth <= AppConstants.bkpMobile) {
    return AppConstants.cardWMin;
  } else if (screenWidth > AppConstants.cardWMax) {
    return AppConstants.cardWMax;
  }

  return screenWidth * 0.9;
}
