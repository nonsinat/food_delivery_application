import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_admin_panel/screens/Profile/my_profile.dart';
import 'package:food_delivery_admin_panel/widgets/listTile.dart';

class DrawerSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    

    return Drawer(
      child: Container(
        color: Color(0xffd1ad17),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.yellow,
                    radius: 45,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome Guest User"),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: Text("Login"),
                      )
                    ],
                  )
                ],
              ),
            ),
            listTile(icon: CupertinoIcons.home, title: "Home", onTap: () {}),
            listTile(
                icon: Icons.shop_outlined, title: "Review Cart", onTap: () {}),
            listTile(
                icon: Icons.person_outline,
                title: "My Profile",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyProfile(),
                    ),
                  );
                }),
            listTile(
                icon: Icons.notifications_outlined,
                title: "Notification",
                onTap: () {}),
            listTile(
                icon: Icons.star_outline,
                title: "Rating & Review",
                onTap: () {}),
            listTile(
                icon: Icons.favorite_outline, title: "WishList", onTap: () {}),
            listTile(
                icon: Icons.copy_outlined,
                title: "Raise s Compaint",
                onTap: () {}),
            listTile(
                icon: Icons.format_quote_outlined, title: "FAQs", onTap: () {}),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 350,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Text(
                    "Contact Support",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Call us : "),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "+8559876541",
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Mail us :"),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "hello@gmail.com",
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
