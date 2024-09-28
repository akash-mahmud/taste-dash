import "package:flutter/material.dart";
import "package:taste_dash/widget/widget_support.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Akash",
                  style: Appwidget.boldTextStyle()
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration:  BoxDecoration(
                    
                    color: Colors.black, borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: const Icon(Icons.shopping_cart_outlined , color: Colors.white,),
                ),

              ],
            ),

                            const SizedBox(
                  height: 30,
                ),
                Text("Delecious food",
                style: Appwidget.headlineTextStyle(),
                ),

                     Text("Discover and get great food",
                style: Appwidget.lightTextStyle(),
                ),
          ],
        ),
      ),
    );
  }
}
