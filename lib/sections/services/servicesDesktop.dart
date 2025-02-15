import 'package:flip_card/flip_card.dart';
 import 'package:flutter/material.dart';
import 'package:my_portfolio/animations/bottomAnimation.dart';
import 'package:my_portfolio/provider/themeProvider.dart';
import 'package:my_portfolio/sections/serviceDetails/serviceDetails.dart';
import 'package:my_portfolio/widget/adaptiveText.dart';
import 'package:my_portfolio/widget/customBtn.dart';
import 'package:my_portfolio/widget/customTextHeading.dart';
import 'package:my_portfolio/widget/serviceCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants.dart';
import 'package:provider/provider.dart';

class ServiceDesktop extends StatefulWidget {
  @override
  _ServiceDesktopState createState() => _ServiceDesktopState();
}

class _ServiceDesktopState extends State<ServiceDesktop> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
      child: Column(
        children: [
          CustomSectionHeading(text: "\nWhat I Do"),
          CustomSectionSubHeading(
              text: "I may not be perfect, but I'm surely of some help 🥰\n\n"),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: WidgetAnimator(
                      child: ServiceCard(
                        cardWidth: width < 1200 ? width * 0.25 : width * 0.22,
                        cardHeight:
                            width < 1200 ? height * 0.37 : height * 0.35,
                        serviceIcon: kServicesIcons[index],
                        serviceTitle: kServicesTitles[index],
                        serviceDescription: kServicesDescriptions[index],
                        serviceLink: kServicesLinks[index],
                        cardBack: ServiceCardBackWidget(
                            serviceTitle: kServicesTitles[index],
                            serviceDesc: kServicesDescriptions[index],
                            themeProvider: _themeProvider,
                            height: height,
                            width: width),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int index = 3; index < kServicesIcons.length; index++)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: WidgetAnimator(
                        child: ServiceCard(
                          cardWidth: width < 1200 ? width * 0.25 : width * 0.22,
                          cardHeight:
                              width < 1200 ? height * 0.37 : height * 0.35,
                          serviceIcon: _themeProvider.lightTheme && index == 4
                              ? "assets/services/open_b.png"
                              : kServicesIcons[index],
                          serviceTitle: kServicesTitles[index],
                          serviceDescription: kServicesDescriptions[index],
                          serviceLink: kServicesLinks[index],
                          cardBack: ServiceCardBackWidget(
                            serviceDesc: kServicesDescriptions[index],
                            serviceTitle: kServicesTitles[index],
                            themeProvider: _themeProvider,
                            height: height,
                            width: width,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ServiceCardBackWidget extends StatelessWidget {
  const ServiceCardBackWidget(
      {Key? key,
       required ThemeProvider themeProvider,
        this.height,
        this.width,
      this.serviceDesc,
      this.serviceTitle})
      : _themeProvider = themeProvider,
        super(key: key);

  final ThemeProvider? _themeProvider;
  final double? height;
  final double? width;
  final String? serviceDesc;
  final String? serviceTitle;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AdaptiveText(
            serviceDesc,
            style: GoogleFonts.montserrat(
              color: _themeProvider!.lightTheme ? Colors.black : Colors.white,
              fontSize: height! * 0.015,
              letterSpacing: 2.0,
              fontWeight: FontWeight.w400,
              height: width! < 900 ? 1.5 : 1.8,
            ),
          ),
          const SizedBox(height: 25.0),
          MaterialButton(
            hoverColor: kPrimaryColor.withAlpha(150),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(color: kPrimaryColor)),
            onPressed: () {
              serviceTitle == kServicesTitles[0]
                  ? launchURL(kServicesLinks[0]):
              serviceTitle == kServicesTitles[1]
                  ? launchURL(kServicesLinks[1]):
              serviceTitle == kServicesTitles[2]
                  ? launchURL(kServicesLinks[2]):
              serviceTitle == kServicesTitles[3]
                  ? launchURL(kServicesLinks[3])
                  :  launchURL(kServicesLinks[4]);

            },
            child: Text(
              "Details",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w300,
                color: _themeProvider!.lightTheme ? Colors.black : Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            width: 250.0,
            height: 0.5,
            color:
                _themeProvider!.lightTheme ? Colors.grey[400] : Colors.grey[100],
          ),
          const SizedBox(height: 10.0),
          SizedBox(
            height: 40.0,
            width: 150.0,
            child: MaterialButton(
              color: kPrimaryColor,
              onPressed: () => showDialog(
                  context: context,
                  builder: (contecxt) => AlertDialog(
                        backgroundColor: _themeProvider!.lightTheme
                            ? Colors.white
                            : Colors.grey[900]!,
                        title: AdaptiveText(
                          "Hire Me!",
                          style: TextStyle(
                              fontSize: 32.0,
                              color: _themeProvider!.lightTheme
                                  ? Colors.black
                                  : Colors.white),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text("Back"))
                        ],
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomFilledBtn(
                              height: 40.0,
                              onPressed: () =>
                                  launchURL("https://wa.me/?text=Hi Abdullah!"),
                              btnColor: Color(0xff34CB62),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(FontAwesomeIcons.whatsapp),
                                  const SizedBox(width: 8.0),
                                  Text("WhatsApp"),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            CustomFilledBtn(
                              height: 40.0,
                              onPressed: () => launchURL(
                                  "https://nafezly.com/u/Abdallah_Elshafay"),
                              btnColor: Color(0xff2a7fff),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                   Image.asset(
                                      "assets/nafezly.png",
                                    height: 35.0,
                                  ),
                                  const SizedBox(width: 8.0),
                                  Text("Nafezly"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
              child: Text(
                "HIRE ME!",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}

/*Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                                onTap: () => launchURL(kServicesLinks[0]),
                                child: Image.asset(
                                  'assets/services/fiverr.png',
                                  height: 25.0,
                                  color: _themeProvider.lightTheme
                                      ? Colors.black
                                      : Colors.green,
                                ),
                              ),
                              const SizedBox(width: 30.0),
                              InkWell(
                                onTap: () => launchURL(
                                    "https://www.upwork.com/freelancers/~0197b0f6aaeba9675f"),
                                child: Image.network(
                                  "https://img.icons8.com/ios-filled/50/000000/upwork.png",
                                  height: 33.0,
                                  color: _themeProvider.lightTheme
                                      ? Colors.black
                                      : Colors.green,
                                ),
                              ),
                            ],
                          )*/