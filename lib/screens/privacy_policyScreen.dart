import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last_penny/constants/last_penny_theme.dart';
import 'package:last_penny/constants/last_penny_static.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:last_penny/main.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  @override
  _PrivacyPolicyScreenState createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return LastPennyDrawer(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 0.9],
                  colors: [darkMode ? pennyGRD2_1 : pennyGRD1_1, darkMode ? pennyGRD2_2 : pennyGRD1_2]
              )
          ),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              //AppBar
              LastPennyAppBar(),
              Padding(
                padding: EdgeInsets.all(32),
                child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 150,
                          margin: EdgeInsets.only(top: 48, bottom: 32),
                          child: SvgPicture.asset('lib/assets/svg/LP_LastPenny.svg', color: darkMode ? pennyWhite3 : pennyBlack2)
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        // Last Penny Privacy Policy
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Last Penny Privacy Policy',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Last updated April 10, 2021',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 64,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Thank you for choosing to be part of our community at Last Penny ("Company", "we", "us", "our"). We are committed to protecting your personal information and your right to privacy. If you have any questions or concerns about this privacy notice, or our practices with regards to your personal information, please contact us at lastpenny@emiralanyalioglu.com.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('When you use our mobile application, as the case may be (the "App") and more generally, use any of our services (the "Services", which include the App), we appreciate that you are trusting us with your personal information. We take your privacy very seriously. In this privacy notice, we seek to explain to you in the clearest way possible what information we collect, how we use it and what rights you have in relation to it. We hope you take some time to read through it carefully, as it is important. If there are any terms in this privacy notice that you do not agree with, please discontinue use of our Services immediately.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('This privacy notice applies to all information collected through our Services (which, as described above, includes our App), as well as, any related services, sales, marketing or events.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Please read this privacy notice carefully as it will help you understand what we do with the information that we collect.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 64,
                        ),
                        // 1. WHAT INFORMATION DO WE COLLECT?
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('1. WHAT INFORMATION DO WE COLLECT?',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Information automatically collected',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('In Short:  Some information — such as your Internet Protocol (IP) address and/or browser and device characteristics — is collected automatically when you visit our App.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('We automatically collect certain information when you visit, use or navigate the App. This information does not reveal your specific identity (like your name or contact information) but may include device and usage information, such as your IP address, browser and device characteristics, operating system, language preferences, referring URLs, device name, country, location, information about how and when you use our App and other technical information. This information is primarily needed to maintain the security and operation of our App, and for our internal analytics and reporting purposes.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Like many businesses, we also collect information through cookies and similar technologies.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('The information we collect includes:',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text("Log and Usage Data. Log and usage data is service-related, diagnostic, usage and performance information our servers automatically collect when you access or use our App and which we record in log files. Depending on how you interact with us, this log data may include your IP address, device information, browser type and settings and information about your activity in the App (such as the date/time stamps associated with your usage, pages and files viewed, searches and other actions you take such as which features you use), device event information (such as system activity, error reports (sometimes called 'crash dumps') and hardware settings).",
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Information collected through our App',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('In Short:  We collect information regarding your push notifications, when you use our App.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('If you use our App, we also collect the following information:',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text("Push Notifications. We may request to send you push notifications regarding your account or certain features of the App. If you wish to opt-out from receiving these types of communications, you may turn them off in your device's settings.",
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('This information is primarily needed to maintain the security and operation of our App, for troubleshooting and for our internal analytics and reporting purposes.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 64,
                        ),
                        // 2. HOW DO WE USE YOUR INFORMATION?
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('2. HOW DO WE USE YOUR INFORMATION?',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('In Short:  We process your information for purposes based on legitimate business interests, the fulfillment of our contract with you, compliance with our legal obligations, and/or your consent.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('We use personal information collected via our App for a variety of business purposes described below. We process your personal information for these purposes in reliance on our legitimate business interests, in order to enter into or perform a contract with you, with your consent, and/or for compliance with our legal obligations. We indicate the specific processing grounds we rely on next to each purpose listed below.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('We use the information we collect or receive:',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('To facilitate account creation and logon process. If you choose to link your account with us to a third-party account (such as your Google or Facebook account), we use the information you allowed us to collect from those third parties to facilitate account creation and logon process for the performance of the contract.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('To post testimonials. We post testimonials on our App that may contain personal information. Prior to posting a testimonial, we will obtain your consent to use your name and the content of the testimonial. If you wish to update, or delete your testimonial, please contact us at lastpenny@emiralanyalioglu.com and be sure to include your name, testimonial location, and contact information.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Request feedback. We may use your information to request feedback and to contact you about your use of our App.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text("To enable user-to-user communications. We may use your information in order to enable user-to-user communications with each user's consent.",
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('To manage user accounts. We may use your information for the purposes of managing our account and keeping it in working order.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('To send administrative information to you. We may use your personal information to send you product, service and new feature information and/or information about changes to our terms, conditions, and policies.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('To protect our Services. We may use your information as part of our efforts to keep our App safe and secure (for example, for fraud monitoring and prevention).',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('To enforce our terms, conditions and policies for business purposes, to comply with legal and regulatory requirements or in connection with our contract.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('To respond to legal requests and prevent harm. If we receive a subpoena or other legal request, we may need to inspect the data we hold to determine how to respond.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('For other business purposes. We may use your information for other business purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our App, products, marketing and your experience. We may use and store this information in aggregated and anonymized form so that it is not associated with individual end users and does not include personal information. We will not use identifiable personal information without your consent.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 64,
                        ),
                        // 3. WILL YOUR INFORMATION BE SHARED WITH ANYONE?
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('3. WILL YOUR INFORMATION BE SHARED WITH ANYONE?',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('In Short:  We only share information with your consent, to comply with laws, to provide you with services, to protect your rights, or to fulfill business obligations.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('We may process or share your data that we hold based on the following legal basis:',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Consent: We may process your data if you have given us specific consent to use your personal information for a specific purpose.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Legitimate Interests: We may process your data when it is reasonably necessary to achieve our legitimate business interests.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Performance of a Contract: Where we have entered into a contract with you, we may process your personal information to fulfill the terms of our contract.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Legal Obligations: We may disclose your information where we are legally required to do so in order to comply with applicable law, governmental requests, a judicial proceeding, court order, or legal process, such as in response to a court order or a subpoena (including in response to public authorities to meet national security or law enforcement requirements).',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Vital Interests: We may disclose your information where we believe it is necessary to investigate, prevent, or take action regarding potential violations of our policies, suspected fraud, situations involving potential threats to the safety of any person and illegal activities, or as evidence in litigation in which we are involved.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('More specifically, we may need to process your data or share your personal information in the following situations:',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Business Transfers. We may share or transfer your information in connection with, or during negotiations of, any merger, sale of company assets, financing, or acquisition of all or a portion of our business to another company.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Business Partners. We may share your information with our business partners to offer you certain products, services or promotions.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 64,
                        ),
                        // 4. DO WE USE COOKIES AND OTHER TRACKING TECHNOLOGIES?
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('4. DO WE USE COOKIES AND OTHER TRACKING TECHNOLOGIES?',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('In Short:  We may use cookies and other tracking technologies to collect and store your information.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('We may use cookies and similar tracking technologies (like web beacons and pixels) to access or store information. Specific information about how we use such technologies and how you can refuse certain cookies is set out in our Cookie Notice.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 64,
                        ),
                        // 5. IS YOUR INFORMATION TRANSFERRED INTERNATIONALLY?
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('5. IS YOUR INFORMATION TRANSFERRED INTERNATIONALLY?',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('In Short:  We may transfer, store, and process your information in countries other than your own.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Our servers are located in. If you are accessing our App from outside, please be aware that your information may be transferred to, stored, and processed by us in our facilities and by those third parties with whom we may share your personal information (see "WILL YOUR INFORMATION BE SHARED WITH ANYONE?" above), in and other countries.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('If you are a resident in the European Economic Area (EEA) or United Kingdom (UK), then these countries may not necessarily have data protection laws or other similar laws as comprehensive as those in your country. We will however take all necessary measures to protect your personal information in accordance with this privacy notice and applicable law.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 64,
                        ),
                        // 6. HOW LONG DO WE KEEP YOUR INFORMATION?
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('6. HOW LONG DO WE KEEP YOUR INFORMATION?',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('In Short:  We keep your information for as long as necessary to fulfill the purposes outlined in this privacy notice unless otherwise required by law.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text("We will only keep your personal information for as long as it is necessary for the purposes set out in this privacy notice, unless a longer retention period is required or permitted by law (such as tax, accounting or other legal requirements). No purpose in this notice will require us keeping your personal information for longer than twelve (12) months past the termination of the user's account.",
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('When we have no ongoing legitimate business need to process your personal information, we will either delete or anonymize such information, or, if this is not possible (for example, because your personal information has been stored in backup archives), then we will securely store your personal information and isolate it from any further processing until deletion is possible.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 64,
                        ),
                        // 7. HOW DO WE KEEP YOUR INFORMATION SAFE?
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('7. HOW DO WE KEEP YOUR INFORMATION SAFE?',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('In Short:  We aim to protect your personal information through a system of organizational and technical security measures.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('We have implemented appropriate technical and organizational security measures designed to protect the security of any personal information we process. However, despite our safeguards and efforts to secure your information, no electronic transmission over the Internet or information storage technology can be guaranteed to be 100% secure, so we cannot promise or guarantee that hackers, cybercriminals, or other unauthorized third parties will not be able to defeat our security, and improperly collect, access, steal, or modify your information. Although we will do our best to protect your personal information, transmission of personal information to and from our App is at your own risk. You should only access the App within a secure environment.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 64,
                        ),
                        // 8. DO WE COLLECT INFORMATION FROM MINORS?
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('8. DO WE COLLECT INFORMATION FROM MINORS?',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('In Short:  We do not knowingly collect data from or market to children under 18 years of age.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('We do not knowingly solicit data from or market to children under 18 years of age. By using the App, you represent that you are at least 18 or that you are the parent or guardian of such a minor and consent to such minor dependent’s use of the App. If we learn that personal information from users less than 18 years of age has been collected, we will deactivate the account and take reasonable measures to promptly delete such data from our records. If you become aware of any data we may have collected from children under age 18, please contact us at lastpenny@emiralanyalioglu.com.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 64,
                        ),
                        // 9. WHAT ARE YOUR PRIVACY RIGHTS?
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('9. WHAT ARE YOUR PRIVACY RIGHTS?',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('In Short:  You may review, change, or terminate your account at any time.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('If you are a resident in the EEA or UK and you believe we are unlawfully processing your personal information, you also have the right to complain to your local data protection supervisory authority. You can find their contact details here:',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: GestureDetector(
                                    onTap: (){
                                      const url = "http://ec.europa.eu/justice/data-protection/bodies/authorities/index_en.htm";
                                      launch(url);
                                    },
                                    child: Text('http://ec.europa.eu/justice/data-protection/bodies/authorities/index_en.htm',
                                        overflow: TextOverflow.clip,
                                        style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: pennyLink
                                        )
                                    ),
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('If you are a resident in Switzerland, the contact details for the data protection authorities are available here:',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: GestureDetector(
                                    onTap: (){
                                      const url = "https://www.edoeb.admin.ch/edoeb/en/home.html";
                                      launch(url);
                                    },
                                    child: Text('https://www.edoeb.admin.ch/edoeb/en/home.html',
                                        overflow: TextOverflow.clip,
                                        style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: pennyLink
                                        )
                                    ),
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('If you have questions or comments about your privacy rights, you may email us at lastpenny@emiralanyalioglu.com.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Account Information',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('If you would at any time like to review or change the information in your account or terminate your account, you can:',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Log in to your account settings and update your user account.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Upon your request to terminate your account, we will deactivate or delete your account and information from our active databases. However, we may retain some information in our files to prevent fraud, troubleshoot problems, assist with any investigations, enforce our Terms of Use and/or comply with applicable legal requirements.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Cookies and similar technologies: Most Web browsers are set to accept cookies by default. If you prefer, you can usually choose to set your browser to remove cookies and to reject cookies. If you choose to remove cookies or reject cookies, this could affect certain features or services of our App. To opt-out of interest-based advertising by advertisers on our App visit',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: GestureDetector(
                                    onTap: (){
                                      const url = "http://www.aboutads.info/choices/";
                                      launch(url);
                                    },
                                    child: Text('http://www.aboutads.info/choices/',
                                        overflow: TextOverflow.clip,
                                        style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: pennyLink
                                        )
                                    ),
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Opting out of email marketing: You can unsubscribe from our marketing email list at any time by clicking on the unsubscribe link in the emails that we send or by contacting us using the details provided below. You will then be removed from the marketing email list — however, we may still communicate with you, for example to send you service-related emails that are necessary for the administration and use of your account, to respond to service requests, or for other non-marketing purposes. To otherwise opt-out, you may:',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Access your account settings and update your preferences.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 64,
                        ),
                        // 10. CONTROLS FOR DO-NOT-TRACK FEATURES
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('10. CONTROLS FOR DO-NOT-TRACK FEATURES',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Most web browsers and some mobile operating systems and mobile applications include a Do-Not-Track ("DNT") feature or setting you can activate to signal your privacy preference not to have data about your online browsing activities monitored and collected. At this stage no uniform technology standard for recognizing and implementing DNT signals has been finalized. As such, we do not currently respond to DNT browser signals or any other mechanism that automatically communicates your choice not to be tracked online. If a standard for online tracking is adopted that we must follow in the future, we will inform you about that practice in a revised version of this privacy notice.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 64,
                        ),
                        // 11. DO CALIFORNIA RESIDENTS HAVE SPECIFIC PRIVACY RIGHTS?
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('11. DO CALIFORNIA RESIDENTS HAVE SPECIFIC PRIVACY RIGHTS?',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('In Short:  Yes, if you are a resident of California, you are granted specific rights regarding access to your personal information.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('California Civil Code Section 1798.83, also known as the "Shine The Light" law, permits our users who are California residents to request and obtain from us, once a year and free of charge, information about categories of personal information (if any) we disclosed to third parties for direct marketing purposes and the names and addresses of all third parties with which we shared personal information in the immediately preceding calendar year. If you are a California resident and would like to make such a request, please submit your request in writing to us using the contact information provided below.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('If you are under 18 years of age, reside in California, and have a registered account with the App, you have the right to request removal of unwanted data that you publicly post on the App. To request removal of such data, please contact us using the contact information provided below, and include the email address associated with your account and a statement that you reside in California. We will make sure the data is not publicly displayed on the App, but please be aware that the data may not be completely or comprehensively removed from all our systems (e.g. backups, etc.).',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 64,
                        ),
                        // 12. DO WE MAKE UPDATES TO THIS NOTICE?
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('12. DO WE MAKE UPDATES TO THIS NOTICE?',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('In Short:  Yes, we will update this notice as necessary to stay compliant with relevant laws.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('We may update this privacy notice from time to time. The updated version will be indicated by an updated "Revised" date and the updated version will be effective as soon as it is accessible. If we make material changes to this privacy notice, we may notify you either by prominently posting a notice of such changes or by directly sending you a notification. We encourage you to review this privacy notice frequently to be informed of how we are protecting your information.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 64,
                        ),
                        // 13. HOW CAN YOU CONTACT US ABOUT THIS NOTICE?
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('13. HOW CAN YOU CONTACT US ABOUT THIS NOTICE?',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('If you have questions or comments about this notice, you may email us at lastpenny@emiralanyalioglu.com.',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 64,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Last Penny',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 1,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: darkMode ? pennyWhite3 : pennyBlack2
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                  child: Text('Ankara, Turkey',
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: darkMode ? pennyWhite3 : pennyBlack2
                                      )
                                  )
                              )
                            ]
                        ),
                        SizedBox(
                          height: 32,
                        )
                      ],
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
