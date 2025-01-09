import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
const Color kPrimaryColor = Colors.teal;

// Social Media
const kSocialIcons = [
  "https://img.icons8.com/?size=100&id=kQzCK4emnaD2&format=png&color=000000",
  "https://img.icons8.com/?size=100&id=32309&format=png&color=000000",
  "https://img.icons8.com/?size=100&id=phOKFKYpe00C&format=png&color=000000",
  "https://img.icons8.com/?size=100&id=DHptQwHYbjnM&format=png&color=000000",
  "https://img.icons8.com/?size=100&id=3tC9EQumUAuq&format=png&color=000000",
  "https://img.icons8.com/?size=100&id=110611&format=png&color=000000"
];

const kSocialLinks = [
  "https://www.facebook.com/abdalla.android.33360",
  "https://www.instagram.com/abdullah_elamary/profilecard/?igsh=NG5yMWhyZnI1N2Ex",
  "https://x.com/AbdullahAlamar0?t=saslo4jAis_ntvU51E7w5w&s=08",
  "https://www.linkedin.com/in/abdullah-abdelsamad-8a5739140?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
  "https://github.com/3boodev",
  "https://medium.com/@a.abdelsamad.al"
];

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

// Community
final kCommunityLogo = [
  // 'assets/bns.png',
  'assets/flutterIsl.png',
  'assets/dsc.png'
];

final kCommunityLinks = [
  // "http://www.bsu.edu.eg/",
  "https://www.facebook.com/groups/FlutterEgypt",
  "https://gdg.community.dev/gdg-beni-suef/"
];

// Tools & Tech
final kTools = [
  "Flutter",
  "Dart",
  "Kotlin",
  "KMP",
  "CI/CD",
];

// services
final kServicesIcons = [
  "assets/services/app.png",
  "assets/services/ui.png",
  "assets/services/rapid.png",
  "assets/services/blog.png",
  "assets/services/open.png",
];

final kServicesTitles = [
  "Full App Development",
  "UI/UX Designing",
  "Rapid API",
  "Awesome DashBoards",
  "Open Source - GitHub",
];

final kServicesDescriptions = [
  "- Develop Mobile Apps (Android - IOS) \n- Integrate Diff 3rd Party Solutions \n- APIs Using [Deno - Lumen]",
  "- Modern UI/UX Designing\n- Adobe XD\n- Mobile & Web designs\n- Interactive UI designs\n- Responsiveness\n- Promo Videos and more..!",
  "- Rapid API via Lumen\n- Working REST\n- Quick & Working APIs \n- Secure Data Saver",
  "- Awesome DashBoards\n- Response DashBoards \n- SEO friendly\n- Contain Every Thing and more..!",
  "- Open source GitHub Projects\n- Awesome README.md\n- Well documented\n- Header images and more...!",
];

final kServicesLinks = [
  "https://nafezly.com/u/Abdallah_Elshafay",
  "https://github.com/3boodev",
  "https://github.com/3boodev",
  "https://medium.com/@a.abdelsamad.al",
  "https://github.com/3boodev"
];

// projects
final kProjectsBanner = [
  "assets/projects/medkitB.png",
  "assets/projects/hereiamB.png",
  "assets/projects/covidB.png",
  "assets/projects/driveitB.png",
  "assets/projects/getfitB.png",
  "assets/projects/restcafeB.png",
  "assets/projects/setelbanatB.png",

  "assets/projects/assetsB.png",
  "assets/projects/easeB.png",
  "assets/projects/scsB.png",
  "assets/projects/expo-UB.png",
  "assets/projects/expo-MB.png",
];

final kProjectsIcons = [
  "assets/projects/medkit.png",
  "assets/projects/hereiam.png",
  "assets/projects/covid.png",
  "assets/projects/driveit.png",
  "assets/projects/getfit.png",
  "assets/projects/restcafe.png",
  "assets/projects/setelbanat.png",
  "assets/projects/assets.JPG",
  "assets/projects/easeme.JPG",
  "assets/projects/scs.JPG",
  "assets/projects/expo.JPG",
  "assets/projects/expo.JPG",
];

final kProjectsTitles = [
  "Dawak3ndna",
  "TripTo",
  "COVID-19",
  "Drive-It",
  "Get-Fit",
  "Rest-Cafe",
  "Set-Elbanat",
  "Assets Heart",
  "Ease-ME",
  "SCS",
  "Exponile-Customer",
  "Exponile-Merchant",
];

final kProjectsDescriptions = [
  "A Phramacy app developed using Flutter powered with Firebase as database with Doctor and Patient panels.",
  "TripTO App for visitor's Tourists for Egypt to show them several Services such Meusums , Hotels and so on. ",
  "Covid-19 statistics for Warning Areas and Save Areas around whole World.",
  "Drive-It App like Uber for Drivers and Clients for serve Users to arrive their Destinations.",
  "Do Exercise and workout from your home using GitFit app that developed using Flutter",
  "Ordering and Deliver food app and on-site Serve app from Resturants using Rest-Cafe Application",
  "Beauty app and ordering things for Beauty Centers. ",
  "Assets Heart for All Hospitals in Egypt in any Field [Police - Military - Public - Private] For Mintanance or Check Machines Health",
  "Ease-Me to Do any Service from communications companies [We - Vodafone - Etisalat - Orange]",
  "SCS for Special Care Services for any Person want to choose Service and enjoy with US",
  "ExpoNile is an Ecommerce PlatForm as MultiVendor User Can Buy Anu thing You Want with many Categories and More than 100K Types of Products",
  "ExpoNile is an Ecommerce PlatForm as MultiVendor Merchant Can Register his Shop And Add [Products - Offers] and So On , Observe Customers Orders",
];

final kProjectsLinks = [
  "https://play.google.com/store/apps/details?id=com.tico.dwak3ndna",
  "https://play.google.com/store/apps/details?id=com.ticoo.tripto",
  "https://github.com/3boodev",
  "https://github.com/3boodev",
  "https://github.com/3boodev",
  "https://github.com/3boodev",
  "https://github.com/3boodev",
  "https://github.com/3boodev",
  "https://github.com/3boodev",
  "https://scsco.mystrikingly.com/",
  "https://www.exponile.com/en",
  "https://www.exponile.com/en/merchant",
];

// Contact
final kContactIcons = [
  Icons.home,
  Icons.phone,
  Icons.mail,
];

final kContactTitles = [
  "Location",
  "Phone",
  "Email",
];

final kContactDetails = [
  "Al Olaya, Riyadh, Saudi Arabia",
  "(+966) 050 2947738",
  "a.abdelsamad.al@gmail.com"
];

final kContactLinks = [
  "https://www.google.com/maps/place/RHOC3720%D8%8C+3720+%D8%A7%D8%A8%D9%86+%D8%A5%D9%8A%D8%A7%D8%B3+%D8%A7%D9%84%D9%83%D9%86%D8%A7%D9%86%D9%8A%D8%8C+8417%D8%8C+%D8%AD%D9%8A+%D8%A7%D9%84%D8%B9%D9%84%D9%8A%D8%A7%D8%8C+%D8%A7%D9%84%D8%B1%D9%8A%D8%A7%D8%B6+12333%D8%8C+%D8%A7%D9%84%D8%B3%D8%B9%D9%88%D8%AF%D9%8A%D8%A9%E2%80%AD/@24.7094033,46.6719645,18.06z/data=!4m15!1m8!3m7!1s0x3e2f033bb824b417:0xdc9745cc4a78b2d2!2z2KfZhNi52YTZitin2Iwg2KfZhNix2YrYp9i2INin2YTYs9i52YjYr9mK2Kk!3b1!8m2!3d24.695087!4d46.6806472!16s%2Fm%2F02x6g2f!3m5!1s0x3e2f02d35801079f:0x889665f323d771d2!8m2!3d24.7096792!4d46.6711753!16s%2Fg%2F11fpkk0077?entry=ttu&g_ep=EgoyMDI1MDEwNi4xIKXMDSoASAFQAw%3D%3D",
  "https://wa.me/502947738",
  "a.abdelsamad.al@gmail.com"
];
