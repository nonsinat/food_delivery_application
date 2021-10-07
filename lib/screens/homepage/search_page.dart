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
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Items",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .95,
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFfCCCCCC).withOpacity(.5),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Search for item in the store",
                      style: TextStyle(
                        color: Color(0xff8E8E8E),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Color(0xff8E8E8E),
                    ),
                  ],
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
