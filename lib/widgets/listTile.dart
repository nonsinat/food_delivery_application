import 'package:flutter/material.dart';

// ignore: camel_case_types
class listTile extends StatelessWidget {
  final IconData? icon;
  final String title;
  final VoidCallback onTap;
  final Widget? widget;
  const listTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: Colors.black26,
      ),
      title: Text(
        "$title",
        style: Theme.of(context).textTheme.bodyText2,
      ),
      onTap: onTap,
      trailing: widget,
    );
  }
}
