import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key key,
    @required this.iconData,
    @required this.title,
    @required this.onTap,
    this.size = 35,
  }) : super(key: key);

  final IconData iconData;
  final String title;
  final Function onTap;
  final double size;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.only(bottom: 15),
      leading: Icon(
        iconData,
        color: Color(0xffDEDEDE),
        size: size,
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Color(0xffDEDEDE),
            fontWeight: FontWeight.w300,
            fontSize: 24),
      ),
    );
  }
}
