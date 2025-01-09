import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portfolio/animations/bottomAnimation.dart';
import 'package:my_portfolio/widget/customBtn.dart';
import 'package:my_portfolio/widget/customTextHeading.dart';
import 'package:my_portfolio/widget/projectCard.dart';
import 'package:my_portfolio/constants.dart';

class PortfolioDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScrollController _controller = new ScrollController();
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          CustomSectionHeading(text: "\nPortfolio"),
          CustomSectionSubHeading(
              text: "Here are few samples of my previous work :)\n\n"),
          SizedBox(
            height: width > 1200 ? height * 0.45 : width * 0.21,
            child:
            ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },),
              child:    ListView.separated(
                physics: const AlwaysScrollableScrollPhysics(), // new
                controller: _controller,
                padding: EdgeInsets.symmetric(vertical: 20.0),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return VerticalDivider(
                    color: Colors.transparent,
                    width: width * 0.015,
                  );
                },
                itemBuilder: (context, index) {
                  return WidgetAnimator(
                    child: ProjectCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.35,
                      cardHeight: width < 1200 ? height * 0.32 : height * 0.1,
                      backImage: kProjectsBanner[index],
                      projectIcon: kProjectsIcons[index],
                      projectTitle: kProjectsTitles[index],
                      projectDescription: kProjectsDescriptions[index],
                      projectLink: kProjectsLinks[index],
                    ),
                  );
                },
                itemCount:kProjectsTitles.length, //4,
              ),),


          ),
          SizedBox(
            height: height * 0.02,
          ),
          OutlinedCustomBtn(
              btnText: "See More",
              onPressed: () {
                launchURL("https://github.com/3boodev");
              })
        ],
      ),
    );
  }
}
