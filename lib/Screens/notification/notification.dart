import 'package:flutter/material.dart';
import 'package:trill/ThemeSystem.dart';

class notification extends StatefulWidget {
  notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              centerTitle: true,
        title:appBarTitle,
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.search), color: primaryColor),
        ],
      ),
      body:Center(
      child: Text(
        "No Notification !",
      ),
    ),
  );
  }
}
