import 'dart:ui' as ui;
import 'package:Hack20_FuryUnd3rdogs/about/about_screen.dart';
import 'package:Hack20_FuryUnd3rdogs/layout_back/column_tile.dart';
import 'package:Hack20_FuryUnd3rdogs/layout_back/last_column.dart';
import 'package:Hack20_FuryUnd3rdogs/layout_back/row_tile.dart';
import 'package:Hack20_FuryUnd3rdogs/pages/mine_desc_page.dart';
import 'package:Hack20_FuryUnd3rdogs/pages/pacman_desc_page.dart';
import 'package:Hack20_FuryUnd3rdogs/pages/tetris_desc_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/home-page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String launchUrl = "";

  Future<dynamic> _launchUrl(String url) async {
    setState(() {
      launchUrl = url;
    });
    if (await canLaunch(launchUrl)) {
      await launch(launchUrl);
    } else {
      throw 'Could not launch $launchUrl';
    }
  }

  _launchgmail() async {
    const url =
        'mailto:harshitsingh15967@gmail.com?subject=Feedback&body=Feedback for Our Support';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> sharer() async {
    await FlutterShare.share(
        title: 'Retro game share',
        text: 'Download Hack20 Game Android application',
        linkUrl:
            'https://play.google.com/store/apps/',
        chooserTitle: 'Hack20 Fury_Und3rdogs');
  }

  Future<bool> _popUpBox(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(style: BorderStyle.solid,width: 10,color: Colors.grey),
            ),
            elevation: 20,
            titleTextStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent),
            backgroundColor: Colors.black.withOpacity(0.9),
            actions: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(FlutterIcons.account_supervisor_circle_mco),
                    onPressed: () => _launchUrl('https://store.steampowered.com/games/'),
                    iconSize: 20,
                  ),
//                  IconButton(
//                    icon: Icon(Feather.facebook),
//                    iconSize: 20,
//                    onPressed: () => _launchUrl('https://www.facebook.com/'),
//                  ),
                  IconButton(
                    iconSize: 20,
                    onPressed: () => _launchUrl('https://www.linkedin.com/'),
                    icon: Icon(Feather.linkedin),
                  ),
                  IconButton(
                    iconSize: 20,
                    onPressed: () => _launchUrl('https://www.twitter.com/'),
                    icon: Icon(Feather.twitter),
                  ),
                  IconButton(
                    iconSize: 20,
                    onPressed: () => sharer(),
                    icon: Icon(Feather.share),
                  ),
                  IconButton(
                    onPressed: () => _launchgmail(),
                    icon: Icon(Feather.mail),
                    iconSize: 20,
                  ),
                ],
              )
            ],
            title: Center(child: Text('Add')),
            content: Container(
              color: Colors.transparent,
              height: 80,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.info,color: Colors.blueAccent,),
                    title: Text('About Us',style: TextStyle(color: Colors.blueAccent),),
                    onTap: () => {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutUsPage()))
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Image.asset(
          'assets/images/background.gif',
          fit: BoxFit.fitHeight,
        ),
        new BackdropFilter(
          filter: new ui.ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
          child: new Container(
            color: Colors.black.withOpacity(0.2),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 45.0, bottom: 83.0, left: 35.0, right: 35.0),
          child: Material(
            child: Stack(
              fit: StackFit.loose,
              alignment: Alignment.topLeft,
              children: <Widget>[
                new Image.asset(
                  'assets/images/material_back.jpg',
                  fit: BoxFit.fitHeight,
                ),
                new BackdropFilter(
                  filter: new ui.ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                  child: new Container(
                    color: Colors.black.withOpacity(0.75),
                  ),
                ),
                IconButton(
                  color: Colors.red.withOpacity(0.9),
                  icon: Icon(
                    Icons.menu,
                    color: Colors.grey,
                  ),
                  onPressed: () => _popUpBox(context),
                ),
                Column(children: <Widget>[
                  RowTile(),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'arcade mania'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        shadows: [
                          Shadow(
                            blurRadius: 7.0,
                            color: Colors.redAccent,
                            offset: Offset(2.0, 2.0),
                          ),
                        ],
                        fontFamily: 'Retro Gaming',
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RowTile(),
                  SizedBox(
                    height: 421,
                  ),
                  RowTile()
                ]),
                Positioned(
                  top: 180,
                  left: 110,
                  child: new Image.asset(
                    'assets/images/console.png',
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                  ),
                ),
                Positioned(
                  top: 280,
                  left: 50,
                  bottom: 70,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        RaisedButton(
                          color: Colors.transparent,
                          elevation: 10,
                          highlightColor: Colors.greenAccent,
                          onPressed: () => {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PacDescPage()))
                          },
                          child: Text(
                            '1)  PACMAN',
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 5.0,
                                    color: Colors.greenAccent,
                                    offset: Offset(2.0, 2.0),
                                  ),
                                ],
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Retro Gaming',
                                fontWeight: FontWeight.w200),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RaisedButton(
                          elevation: 10,
                          color: Colors.transparent,
                          highlightColor: Colors.greenAccent,
                          onPressed: () => {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TetrisDescPage()))
                          },
                          child: Text(
                            '2)  TETRIS',
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 5.0,
                                    color: Colors.greenAccent,
                                    offset: Offset(2.0, 2.0),
                                  ),
                                ],
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Retro Gaming',
                                fontWeight: FontWeight.w200),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RaisedButton(
                          elevation: 10,
                          color: Colors.transparent,
                          highlightColor: Colors.greenAccent,
                          onPressed: () => {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MineDescPage()))
                          },
                          child: Text(
                            '3)  MINESW',
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 5.0,
                                    color: Colors.greenAccent,
                                    offset: Offset(2.0, 2.0),
                                  ),
                                ],
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Retro Gaming',
                                fontWeight: FontWeight.w200),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
//                        RaisedButton(
//                          elevation: 10,
//                          splashColor: Colors.redAccent,
//                          color: Colors.transparent,
//                          highlightColor: Colors.greenAccent,
//                          onPressed: () => {
//                            Navigator.pushReplacement(
//                                context,
//                                MaterialPageRoute(
//                                    builder: (context) => GameDescPage()))
//                          },
//                          child: Text(
//                            '4)  CONTRA',
//                            style: TextStyle(
//                                shadows: [
//                                  Shadow(
//                                    blurRadius: 5.0,
//                                    color: Colors.greenAccent,
//                                    offset: Offset(2.0, 2.0),
//                                  ),
//                                ],
//                                color: Colors.white,
//                                fontSize: 20,
//                                fontFamily: 'Retro Gaming',
//                                fontWeight: FontWeight.w200),
//                          ),
//                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ColumnTile(),
                    SizedBox(
                      width: 270,
                    ),
                    LastColumnTile(),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
