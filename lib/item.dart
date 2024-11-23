import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:medical/cart.dart';

class ItemView extends StatefulWidget {
  const ItemView({super.key});

  @override
  State<ItemView> createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.notification_add_outlined),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.shopping_bag_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Sugar Free Gold Low Calories",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Text(
                    "Etiam mollis metus non purus",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Container(
              child: content(),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Text(
                    " Before:Rs.99,",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    "Now:Rs55",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )
                ],
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text("Etiam mollis"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 340.0),
                  child: Icon(
                    Icons.add_box_outlined,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  "More",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 70,
                      width: 100,
                      child: const Column(
                        children: [
                          Text(
                            "Rs.106",
                            style:
                                TextStyle(color: Colors.orange, fontSize: 20),
                          ),
                          Text(
                            "500 pellets",
                            style:
                                TextStyle(color: Colors.orange, fontSize: 15),
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                      height: 70,
                      width: 100,
                      child: const Column(
                        children: [
                          Text(
                            "Rs.166",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                          Text(
                            "110 pellets",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                      height: 70,
                      width: 100,
                      child: const Column(
                        children: [
                          Text(
                            "Rs.552",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                          Text(
                            "300 pellets",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          )
                        ],
                      )),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text(
                    "Product Details",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text(
                      "Interdum et malesuada fames ac ante ipsum primis\n in faucibus. Morbi ut nisi odio. Nulla facilisi\n.Nunc risus massa, gravida id egestas a, pretium vel\n tellus. Praesent feugiat diam sit amet pulvinar\n finibus. Etiam et nisi aliquet, accumsan nisi sit.")
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text(
                    "Ingredients",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Text(
                      "Interdum et malesuada fames ac ante ipsum primis\n in faucibus. Morbi ut nisi odio. Nulla facilisi\n.Nunc risus massa, gravida id egestas a, pretium vel\n tellus. Praesent feugiat diam sit amet pulvinar\n finibus. Etiam et nisi aliquet, accumsan nisi sit.")
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0 ,top:5 ),
              child: Row(
                children: [
                  Text(
                    "Expiry Date",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text("25/12/2023",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.grey),),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0 ),
              child: Row(
                children: [
                  Text(
                    "Brand Name",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text("Something",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.grey),),
                  ),
                ],
              ),
            ),
            Container(
              height: 400,
              width: 500,
              child: Image.asset("assets/bb2.PNG"),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: SizedBox(
                  width: 300,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CartView()),
                      );
                    },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: const Text("Go to Cart",style: TextStyle(color: Colors.white),))),
            )
          ],
        ),
      ),
    );
  }

  Widget content() {
    return CarouselSlider(
      items: [
        Container(
          width: 200,
          //margin: const EdgeInsets.symmetric(horizontal: 50),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/list3.PNG"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: 200,
          // margin: const EdgeInsets.symmetric(horizontal: 50),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/list2.PNG"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: 200,
          // margin: const EdgeInsets.symmetric(horizontal: 50),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/list1.PNG"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        height: 150,
      ),
    );
  }
}