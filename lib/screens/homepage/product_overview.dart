import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductReview extends StatefulWidget {
  const ProductReview({Key? key}) : super(key: key);

  @override
  _ProductReviewState createState() => _ProductReviewState();
}

class _ProductReviewState extends State<ProductReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD7B836),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_outlined),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Product Overview",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 56,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 56,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.white,
                    ),
                    Text(
                      "Add To Wishlist",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 56,
                color: Color(0xffC2A01A),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.bag,
                      color: Colors.black,
                    ),
                    Text(
                      "Add To Wishlist",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Colors.black,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Fresh Basil",
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "\$ 50",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Color(0xff58951e),
                      fontSize: 20,
                    ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .4,
                child: Image.network(
                  "https://cdn.shopify.com/s/files/1/0156/0137/products/Basil_plant_1280x960_0fc95446-605c-49e3-aa42-c6f3a171b8ae.jpg",
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                "Available Options",
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "50 Grem",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                  Text(
                    "\$ 50",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Text(
                      "+ ADD",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Colors.green,
                          ),
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "About This Product",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Originally native to India, Asia, and Africa, basil was held to be a sacred and noble herb. In fact, the word Basil comes from the ancient Greek basilkhon which means royal."),
              SizedBox(
                height: 10,
              ),
              Text("Today, Ocimum basilicum (the scientific name for)"),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
