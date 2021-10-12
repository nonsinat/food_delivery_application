import 'package:flutter/material.dart';

class BoxFood extends StatelessWidget {
  const BoxFood({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: EdgeInsets.only(right: 4),
      height: 260,
      decoration: BoxDecoration(
        // color: Color(0xffdad9da),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 1),
            blurRadius: .2,
            color: Colors.white,
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(
                "https://cdn.shopify.com/s/files/1/0156/0137/products/Basil_plant_1280x960_0fc95446-605c-49e3-aa42-c6f3a171b8ae.jpg",
              ),
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 2),
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Fresh Basil",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  "50\$/50 Gram",
                  style: Theme.of(context).textTheme.caption,
                  textAlign: TextAlign.left,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: Text("50 Gram",
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption!
                                      .copyWith(fontSize: 10)),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xffD1BB6A),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffD7B634),
                          ),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.remove,
                              color: Color(0xffD7B634),
                              size: 18,
                            ),
                            Text(
                              "1",
                              style: TextStyle(
                                color: Color(0xffD7B634),
                              ),
                            ),
                            Icon(
                              Icons.add,
                              color: Color(0xffD7B634),
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
