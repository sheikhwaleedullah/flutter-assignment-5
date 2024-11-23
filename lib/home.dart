import 'package:flutter/material.dart';
import 'package:medical/item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.blue,
              ),
              height: 230,
              width: 500,
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/avatar.jpg"),
                          radius: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 350),
                          child: Icon(
                            Icons.notification_add_outlined,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Text("Hi Waleed",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Text(
                          "Welcome to Quick Medical Store",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: SizedBox(
                      width: 400,
                      child: SearchBar(
                        padding: WidgetStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 10.0)),
                        leading: Icon(Icons.search),
                        hintText: "Search Medicine and Healthcare Product",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Top Categories",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 105.0),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.pink,
                            ),
                            Text("Dental")
                          ],
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.green,
                              ),
                              Text("Wellness")
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.orange,
                            ),
                            Text("Homeo")
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.blue,
                            ),
                            Text("Eye care")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            Image.asset("assets/logo4.png"),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Deals of The Day",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 300.0),
                    child: Text(
                      "More",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 50,
                    crossAxisSpacing: 50),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ItemView()),
                    );
                    },
                    child: Container(
                        height: 240,
                        width: 158,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            children: [
                              Container(
                                  height: 150,
                                  child: Image.asset("assets/grid.PNG")),
                              const Row(
                                children: [
                                  Text(
                                    "Accu-check Active",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Test Strip",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Rs.112",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 40.0),
                                    child: Icon(Icons.star, color: Colors.yellow),
                                  ),
                                  Text("2")
                                ],
                              ),
                            ],
                          ),
                        )),
                  );
                }),
          ],
        ),
      ),
    );
  }
}