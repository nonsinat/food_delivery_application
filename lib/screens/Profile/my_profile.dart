import 'package:flutter/material.dart';
import 'package:food_delivery_admin_panel/constant.dart/colors/colors.dart';
import 'package:food_delivery_admin_panel/screens/homepage/drawer.dart';
import 'package:food_delivery_admin_panel/widgets/listTile.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      drawer: DrawerSide(),
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
        elevation: 0.0,
        title: Text(
          "My Profile",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  color: primaryColor,
                ),
                Container(
                  height: 548,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: scaffoldBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 250,
                            height: 80,
                            padding: EdgeInsets.only(left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Assar Bugit",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: textColor,
                                      ),
                                    ),
                                    Text(
                                      "sinat1213@gmai.com",
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: primaryColor,
                                    child: CircleAvatar(
                                      radius: 12,
                                      child: Icon(
                                        Icons.edit,
                                        color: primaryColor,
                                      ),
                                      backgroundColor: scaffoldBackgroundColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      listTile(
                        icon: Icons.shop_outlined,
                        title: "My Orders",
                        onTap: () {},
                        widget: Icon(Icons.arrow_forward_ios),
                      ),
                      listTile(
                        icon: Icons.location_on_outlined,
                        title: "My Delivery Address",
                        onTap: () {},
                        widget: Icon(Icons.arrow_forward_ios),
                      ),
                      listTile(
                        icon: Icons.person_outline,
                        title: "Refer A Friends",
                        onTap: () {},
                        widget: Icon(Icons.arrow_forward_ios),
                      ),
                      listTile(
                        icon: Icons.file_copy_outlined,
                        title: "Terms & Conditions",
                        onTap: () {},
                        widget: Icon(Icons.arrow_forward_ios),
                      ),
                      listTile(
                        icon: Icons.policy_outlined,
                        title: "Privacy Policy",
                        onTap: () {},
                        widget: Icon(Icons.arrow_forward_ios),
                      ),
                      listTile(
                        icon: Icons.add_chart_outlined,
                        title: "About ",
                        onTap: () {},
                        widget: Icon(Icons.arrow_forward_ios),
                      ),
                      listTile(
                        icon: Icons.exit_to_app_outlined,
                        title: "Log Out",
                        onTap: () {},
                        widget: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                left: 30,
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: primaryColor,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQEZrATmgHOi5ls0YCCQBTkocia_atSw0X-Q&usqp=CAU",
                  ),
                  radius: 45,
                  backgroundColor: scaffoldBackgroundColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
