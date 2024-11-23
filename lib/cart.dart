import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  var _count = 0;
  var _count2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Your Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Two Items in Your Cart"),
                Padding(
                  padding: EdgeInsets.only(left: 240.0),
                  child: Icon(
                    Icons.add_box_outlined,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  "ADD More",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              //selected: true,
              onTap: () {},
              leading: Image.asset(
                "assets/list1.PNG",
                width: 40,
                height: 200,
              ),
              title: const Text("Sugar free gold"),
              subtitle: Row(
                children: [
                  const Column(
                    children: [
                      Text(
                        "bottle of 500 pellets",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Rs 25",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 180.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                _count += 1;
                              });
                            },
                          ),
                          Text(_count.toString()),
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                _count -= 1;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              //selected: true,
              onTap: () {},
              leading: Image.asset(
                "assets/list2.PNG",
                width: 40,
                height: 200,
              ),
              title: const Text("Sugar free gold"),

              subtitle: Row(
                children: [
                  const Column(
                    children: [
                      Text(
                        "bottle of 500 pellets",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Rs 18",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 180.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                _count2 += 1;
                              });
                            },
                          ),
                          Text(_count2.toString()),
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                _count2 -= 1;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 50),
            child: Row(
              children: [
                Text(
                  "Payment Summary",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10.0, top: 5),
                child: Row(
                  children: [
                    Text(
                      "Order Total",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 350.0),
                      child: Text(
                        "228.80",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0, top: 5),
                child: Row(
                  children: [
                    Text(
                      "Item Discount",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 330.0),
                      child: Text(
                        "-28.80",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0, top: 5),
                child: Row(
                  children: [
                    Text(
                      "Coupon Discount",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 310.0),
                      child: Text(
                        "-15.80",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0, top: 5),
                child: Row(
                  children: [
                    Text(
                      "Shipping",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 370.0),
                      child: Text(
                        "Free",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      "Total",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 350.0),
                      child: Text(
                        "Rs.185.00",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: const Text(
                        "Place Order",
                        style: TextStyle(color: Colors.white),
                      )))
            ],
          )
        ],
      ),
    );
  }
}