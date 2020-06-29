import 'package:Hack20_FuryUnd3rdogs/pages/home_page.dart';
import 'package:Hack20_FuryUnd3rdogs/widgets/custom_button.dart';
import 'package:Hack20_FuryUnd3rdogs/widgets/svg_label.dart';
import 'package:flutter/material.dart';
import 'package:Hack20_FuryUnd3rdogs/widgets/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class BenefitsSubscreen extends StatelessWidget {
  const BenefitsSubscreen({
    Key key,
    this.controller,
  }) : super(key: key);

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 200.0,
          ),
          Text(
            'Gaming benefits'.toUpperCase(),
            style: GoogleFonts.nunito(
              color: CustomColors.textGreen,
              fontSize: 15,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Text(
            'Benefits',
            style: GoogleFonts.openSans(
              color: CustomColors.headerText,
              fontSize: 50,
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
            '“Do you like hurting other people?” \n'
                '– Hotline Miami',
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
              color: CustomColors.text,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              height: 1.2,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best experience to revive your mood by playing atari and nintendo style games on mobile emulator',
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
              color: CustomColors.text,
              fontSize: 15,
              fontWeight: FontWeight.w500,
              height: 1.2,
            ),
          ),
          SizedBox(height: 45),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgLabel(
                assetName: 'assets/svg/mountains.svg',
                label: 'Prime \nview',
              ),
              SizedBox(width: 45),
              SvgLabel(
                assetName: 'assets/svg/stars.svg',
                label: 'Excellent \nquality',
              ),
              SizedBox(width: 45),
              SvgLabel(
                assetName: 'assets/svg/money.svg',
                label: 'Good \nStack',
              ),
            ],
          ),
          SizedBox(height: 90),
          Align(
            alignment: Alignment(.8, 0.0),
            child: CustomButton(
                text: 'Get in touch',
                minWidth: 180,
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()))
//                controller.animateTo(0,
//                    duration: Duration(milliseconds: 2300), curve: Curves.ease);

                ),
          ),
          SizedBox(
            height: 200,
          ),
        ],
      ),
    );
  }
}
