import 'package:flutter/material.dart';
import 'package:food_delivery_admin_panel/constant.dart/colors/colors.dart';
import 'package:food_delivery_admin_panel/screens/homepage/search_page.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          "Search",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.menu_rounded,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Items"),
          ),
          Container(
            height: 52,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search for items in the store",
                filled: true,
                fillColor: Color(0xffc2c2c2),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          
        ],
      ),
    );
  }
}
