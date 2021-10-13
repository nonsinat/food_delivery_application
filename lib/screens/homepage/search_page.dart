import 'package:flutter/material.dart';
import 'package:food_delivery_admin_panel/widgets/item_search.dart';

class SearchItemPage extends StatefulWidget {
  const SearchItemPage({Key? key}) : super(key: key);

  @override
  _SearchItemPageState createState() => _SearchItemPageState();
}

class _SearchItemPageState extends State<SearchItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFD7B836),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Search",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.texture_outlined))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              ListTile(
                title: Text("Items"),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 52,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Search for items in the store",
                    filled: true,
                    fillColor: Color(0xFfCCCCCC).withOpacity(.5),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ItemSearch(
                price: '50',
                image:
                    'https://image.freepik.com/free-photo/fresh-basil-leaves-isolated-white_183352-1156.jpg',
                productName: 'Fresh Basil',
              ),
              ItemSearch(
                price: '50',
                image:
                    'https://image.freepik.com/free-photo/fresh-basil-leaves-isolated-white_183352-1156.jpg',
                productName: 'Fresh Basil',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
