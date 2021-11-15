import 'package:dsc_training_project/screens/home_screen/HomePage.dart';
import 'package:dsc_training_project/screens/settings_screen/settings_screen_view_item.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  static String id = "Setting";

  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          id,
          style: TextStyle(fontSize: 30, color: Colors.orange),
        ),
        centerTitle: true,
        backgroundColor: Colors.black12,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black12,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SettingViewItem(text: "Dark Mode", path: HomePage.id),
              // TODO set Dark Mode Screen path
              SettingViewItem(text: "My Orders", path: HomePage.id),
              // TODO set My Orders Screen path
              SettingViewItem(text: "Account Settings", path: HomePage.id),
              //TODO set Account Settings Screen path
              SettingViewItem(text: "About", path: HomePage.id),
              //TODO set About Screen path
            ],
          ),
        ),
      )),
    );
  }
}