class SvgAssets {
  //SPLASHSCREEN ASSETS
  static const String splashBackground = "assets/images/frame.svg";
  static const String logo = "assets/images/logo.svg";
  static const String companyName = "assets/images/companyName.svg";

  //WELCOME-SCREEN ASSETS

  static const List<Map<String, String>> welcomeText = [
    {
      "image": "assets/images/welcome1.svg",
      "heading": "Easiest Way To Receive Money From Your Buyer",
      "subTitle": "Scan QR codes to make a direct transaction."
    },
    {
      "image": "assets/images/welcome2.svg",
      "heading": "Send and Receive Money",
      "subTitle": "Send money by scanning QR codes for direct swift payment."
    },
  ];

  static const double logoCompanyNameMargin = 20;
  static const double logoHeight = 120;
  static const double logoWidth = 120;
  static const double companyNameHeight = 40;
  static const double companyNameWidth = 191;
}

class AppConstants {
  static const double kPadding = 20;
  static const double kPadding2 = 10;

  //MARGINS
  static const double kMargin = 20;
  static const double kMargin2 = 10;

  static const double kButtonWidth = 323;
  static const double kButtonHeight = 49;

  //BUTTON TEXTS
  static const String kSignupButtonIndicator = "Get Started";
  static const String kLoginButtonIndicator = "Log in";
}
