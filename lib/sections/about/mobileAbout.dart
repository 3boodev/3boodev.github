import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_portfolio/provider/themeProvider.dart';
import 'package:my_portfolio/widget/customBtn.dart';
import 'package:my_portfolio/widget/customTextHeading.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widget/aboutMeMetaData.dart';
import 'package:my_portfolio/widget/communityIconBtn.dart';
import 'package:my_portfolio/widget/toolsTechWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMobile extends StatelessWidget {
  final _communityLogoHeight = [40.0, 40.0, 40.0];

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
      color: _themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          // CustomSectionHeading(text: "\nAbout Me"),
          // CustomSectionSubHeading(text: "Get to know me ❤️"),
          // SizedBox(height: 5,),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Who am I?",
              style: GoogleFonts.montserrat(
                color: kPrimaryColor,
                fontSize: height * 0.025,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.028,
          ),
          // Image.asset(
          //   'assets/mob.png',
          //   height: height * 0.27,
          // ),

          Text(
            "📌 My Current Work as Senior Software Engineer @ Aloo Software Company in KSA. \n📌 Have More than 6 Apps Uploaded on AppStore & Google Play Store \n📌 I'm Interest to BI & Big Data  Development",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.022,
              fontWeight: FontWeight.w400,
              color: _themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          ),

          SizedBox(
            height: height * 0.025,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[900]!, width: 1.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Technologies I have worked with:",
              style: GoogleFonts.montserrat(
                  color: kPrimaryColor, fontSize: height * 0.015),
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < kTools.length; i++)
                ToolTechWidget(
                  techName: kTools[i],
                ),
            ],
          ),
          // Row(
          //   children: [
          //     for (int i = 0; i < kTools.length; i++)
          //       ToolTechWidget(
          //         techName: kTools[i],
          //       ),
          //   ],
          // ),
          // SizedBox(
          //   height: height * 0.015,
          // ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[900]!, width: 1.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          AboutMeMetaData(
            data: "Name",
            information: "Abdullah Alamary",
            alignment: Alignment.centerLeft,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AboutMeMetaData(
                data: "Email",
                information: "a.abdelsamad.al@gmail.com",
                alignment: Alignment.centerLeft,
              ),
              SizedBox(width: 10,),
              IconButton(onPressed: (){
                Clipboard.setData(
                    ClipboardData(
                        text:
                        'a.abdelsamad.al@gmail.com'));
                Fluttertoast.showToast(
                    msg:'Copied');
              }, icon: Icon(Icons.copy,size: 15,))
            ],
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedCustomBtn(
                      btnText: "Resume",
                      onPressed: () {
                        kIsWeb
                            ? html.window.open(
                                'https://drive.google.com/file/d/1pYHFjUWNU0tZY0bBvKucAq5aZwy0H4kr/view?usp=sharing',
                                "pdf")
                            : launchURL(
                                'https://drive.google.com/file/d/1pYHFjUWNU0tZY0bBvKucAq5aZwy0H4kr/view?usp=sharing');
                      }),
                ),
                Container(
                  width: width * 0.2,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey[900]!, width: 2.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < kCommunityLogo.length; i++)
                CommunityIconBtn(
                  icon: kCommunityLogo[i],
                  link: kCommunityLinks[i],
                  height: _communityLogoHeight[i],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
