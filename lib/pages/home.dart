import 'package:flutter/material.dart';
import 'package:shoppingapp/widget/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List categories = [
    "images/Headphone.png",
    "images/laptop.png",
    "images/tv.png",
    "images/rolex.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey, Nithish",
                      style: AppWidget.boldTextFieldStyle(),
                    ),
                    Text(
                      "Good Morning",
                      style: AppWidget.lightTextFieldStyle(),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "images/jb.jpg",
                    height: 170,
                    width: 170,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(9)),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: " Search Products",
                    hintStyle: AppWidget.lightTextFieldStyle(),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories", style: AppWidget.semiboldTextField()),
                Text("see all",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.only(left: 20),
                height: 130,
                child: ListView.builder(
                    itemCount: categories.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CategoryTile(image: categories[index]);
                    }))
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  String image;
  CategoryTile({required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      height: 90,
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}
