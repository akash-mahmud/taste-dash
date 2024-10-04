import 'package:flutter/material.dart';
import 'package:taste_dash/widget/widget_support.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int quantity = 1;

  addMore() {
    quantity += 1;
    setState(() {});
  }

  subtract() {
    if (quantity > 1) {
      quantity -= 1;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 50.0, right: 10, left: 10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                      onTap: () {
        Navigator.pop(context);
      },
                
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.arrow_back_ios_new_outlined))),

              Image.asset(
                "assets/images/salad2.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.3,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Medite Salad",
                        style: Appwidget.semiBoldTextStyle(),
                      ),
                      Text(
                        "Honey Goot cheese",
                        style: Appwidget.boldTextStyle(),
                      ),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => subtract(),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "$quantity",
                    style: Appwidget.semiBoldTextStyle(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () => addMore(),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer ",
                style: Appwidget.lightTextStyle(),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Delivery time",
                    style: Appwidget.semiBoldTextStyle(),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.alarm,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("30 min" , style: Appwidget.semiBoldTextStyle(),)
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total price", style: Appwidget.semiBoldTextStyle(),),
                        Text("\$28", style: Appwidget.headlineTextStyle(),),
                      ],
                    ),Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Text("Add to cart", style: TextStyle( color: Colors.white,
                          fontSize: 16,
                          fontFamily: "Poppins"
                          
                          
                          ),
                          
                          ),
                          Container(child: Icon(Icons.shopping_cart_outlined, color: Colors.white,))
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,borderRadius: BorderRadius.circular(5)
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
