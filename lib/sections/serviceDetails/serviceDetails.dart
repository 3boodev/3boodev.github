import 'package:flutter/material.dart';
import 'package:my_portfolio/sections/serviceDetails/serviceDetailsDesktop.dart';
import 'package:my_portfolio/sections/serviceDetails/serviceDetailsMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ServiceDetails extends StatelessWidget {
  final String? dec;
  final String? title;

  const ServiceDetails({  Key? key,  this.dec,  this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ServiceDetailsMobile(
        serviceTitle: title!,
        serviceDesc: dec!, key: key!,
      ),
      tablet: ServiceDetailsMobile(
        serviceTitle: title!,
        serviceDesc: dec!, key: key!,
      ),
      desktop: ServiceDetailsDesktop(
        serviceTitle: title!,
        details: dec!, key: key!,
      ),
    );
  }
}
