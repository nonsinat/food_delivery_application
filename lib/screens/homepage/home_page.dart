import 'package:flutter/material.dart';
import 'package:food_delivery_admin_panel/constant.dart/colors/colors.dart';
import 'package:food_delivery_admin_panel/widgets/box_food.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        title: Text(
          "Home",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.card_travel,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 120, bottom: 10),
                              child: Container(
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xffd1ad17),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(40),
                                  ),
                                ),
                                child: Text(
                                  "data",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "30% off",
                              style: Theme.of(context).textTheme.headline5,
                              textAlign: TextAlign.left,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                "On all vegetable products",
                                style: Theme.of(context).textTheme.caption,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Herbs Seasonings",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: Colors.black),
                  ),
                  Text(
                    "View all",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    10,
                    (index) => BoxFood(),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Fresh Fruit",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: Colors.black),
                  ),
                  Text(
                    "View all",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    10,
                    (index) => BoxFood(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
