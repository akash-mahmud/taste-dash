import "package:flutter/material.dart";
import "package:taste_dash/screen/detail_screen.dart";
import "package:taste_dash/widget/widget_support.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedItem = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello Akash", style: Appwidget.boldTextStyle()),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Delecious food",
              style: Appwidget.headlineTextStyle(),
            ),
            Text(
              "Discover and get great food",
              style: Appwidget.lightTextStyle(),
            ),
            const SizedBox(
              height: 20,
            ),
            showMenus(),
            const SizedBox(
              height: 20,
            ),
            selectedMenuItems(),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/salad2.png",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 20.0),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "Mediterranean Chickpea Salad",
                              style: Appwidget.semiBoldTextStyle(),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "Honey Goot cheese",
                              style: Appwidget.lightTextStyle(),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Text(
                              "\$30",
                              style: Appwidget.semiBoldTextStyle(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  SingleChildScrollView selectedMenuItems() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:(context)=> DetailScreen()));
            },
            child: Container(
              margin: const EdgeInsets.all(4),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/salad2.png",
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        "Veggie Taco Hash",
                        style: Appwidget.semiBoldTextStyle(),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Fresh and Healthy",
                        style: Appwidget.lightTextStyle(),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "\$25",
                        style: Appwidget.semiBoldTextStyle(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/salad3.png",
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "Spicy with onion",
                      style: Appwidget.semiBoldTextStyle(),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Fresh and Healthy",
                      style: Appwidget.lightTextStyle(),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "\$28",
                      style: Appwidget.semiBoldTextStyle(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                margin: const EdgeInsets.only(right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/salad4.png",
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "More toppings",
                      style: Appwidget.semiBoldTextStyle(),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Fresh and Healthy",
                      style: Appwidget.lightTextStyle(),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "\$30",
                      style: Appwidget.semiBoldTextStyle(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row showMenus() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            selectedItem = "burger";
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: selectedItem == "burger" ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/burger.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: selectedItem == "burger" ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            selectedItem = "ice-cream";
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color:
                      selectedItem == "ice-cream" ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/ice-cream.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color:
                    selectedItem == "ice-cream" ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            selectedItem = "pizza";
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: selectedItem == "pizza" ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/pizza.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: selectedItem == "pizza" ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            selectedItem = "salad";
            setState(() {});
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: selectedItem == "salad" ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/salad.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
                color: selectedItem == "salad" ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
