import 'package:flutter/material.dart';
import 'package:Hack20_FuryUnd3rdogs/widgets/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class UrbanPlannersSubscreen extends StatelessWidget {
  const UrbanPlannersSubscreen({
    Key key,
    this.controller,
  }) : super(key: key);

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 200,
        ),
        Text(
          'Swaasth Ek Jaroorat'.toUpperCase(),
          textAlign: TextAlign.center,
          style: GoogleFonts.nunito(
            color: CustomColors.textGreen,
            fontSize: 15,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
        'AapKaVaidya',
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
            color: CustomColors.headerText,
            fontSize: 45,
            fontWeight: FontWeight.w800,
            height: .9,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 70,
          height: 5,
          child: Container(
            color: CustomColors.orange,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          'Available when you are and without \nthe hassle of the waiting room. \nConnect in minutes with board-certified \nphysicians and doctoral-level therapists \nonline over live video from your \nsmartphone or tablet',
          textAlign: TextAlign.center,
          style: GoogleFonts.nunito(
            color: CustomColors.text,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            height: 1.2,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        FlatButton(
          onPressed: () {
            controller.animateTo(1540,
                duration: Duration(milliseconds: 2300), curve: Curves.ease);
          },
          child: Text(
            'Show more',
            style: GoogleFonts.nunito(
              color: CustomColors.orange,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 1.2,
            ),
          ),
        ),
        SizedBox(
          height: 330,
        ),
        _buildExteriorInfoSection(),
        SizedBox(
          height: 370,
        ),
      ],
    );
  }

  Widget _buildExteriorInfoSection() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Get the \nbest view',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                color: CustomColors.headerText,
                fontSize: 28,
                fontWeight: FontWeight.w800,
                height: 1,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Faster and less expensive \nthan a walk in clinic or ER, \nyou can chat with a doctor \nvirtually 24/7, nights and \nweekends included.',
              style: GoogleFonts.nunito(
                color: CustomColors.text,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
