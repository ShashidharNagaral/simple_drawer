import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sidemenudrawer/widgets/list_item.dart';

void main() => (runApp(MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData()
          .copyWith(dividerTheme: DividerThemeData(color: Colors.black26)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        child: Container(
          color: Color(0xff14014F),
          width: 4 * size.width / 5,
          child: Padding(
            padding: EdgeInsets.only(left: 26),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: size.height / 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white30,
                      radius: 30,

                      ///add profile image in images folder
//                      backgroundImage: AssetImage('images/.jpg'),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Hello',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                color: Color(0xffDEDEDE),
                              ),
                            ),
                            Text(
                              'Shashidhar N',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffDEDEDE),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height / 12,
                ),
                ListItem(
                  onTap: () {},
                  title: 'Forecast',
                  iconData: Icons.home,
                ),
                ListItem(
                  onTap: () {},
                  title: 'History',
                  iconData: Icons.history,
                ),
                ListItem(
                  onTap: () {},
                  title: 'Favorites',
                  iconData: Icons.favorite_border,
                ),
                ListItem(
                  onTap: () {},
                  title: 'News',
                  iconData: FontAwesomeIcons.newspaper,
                  size: 30,
                ),
                ListItem(
                  onTap: () {},
                  iconData: Icons.sms_failed,
                  title: 'Feedback',
                ),
                ListItem(
                  onTap: () {},
                  title: 'Sign Out',
                  iconData: Icons.power_settings_new,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Color(0xff1a2228),
                  size: 36,
                ),
                onPressed: () {
                  _scaffoldKey.currentState.openDrawer();
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Color(0xff1a2228),
                  size: 36,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
