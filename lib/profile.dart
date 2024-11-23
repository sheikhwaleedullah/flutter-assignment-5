import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body:  Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 45,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/avatar.jpg"),
                      radius: 40,
                    )),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "Hi, Sheikh Waleed",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text("Welcome to  Quick Medical Store")
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              //selected: true,
              onTap: (){},
              leading: const Icon(Icons.notes_outlined,color: Colors.black,),
              title: const Text("Edit Profile"),
              trailing: const Icon(Icons.arrow_forward_ios_sharp),
            ),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              //selected: true,
              onTap: (){},
              leading: const Icon(Icons.contact_page,),
              title: const Text("My Orders"),
              trailing: const Icon(Icons.arrow_forward_ios_sharp,),
            ),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              //selected: true,
              onTap: (){},
              leading: const Icon(Icons.access_time_outlined,color: Colors.black,),
              title: const Text("Billing"),
              trailing: const Icon(Icons.arrow_forward_ios_sharp,),
            ),
          ),
           Container(
            color: Colors.white,
            child: ListTile(
              //selected: true,
              onTap: (){},
              leading: const Icon(Icons.question_mark_rounded,color: Colors.black,),
              title: const Text("Faq"),
              trailing: const Icon(Icons.arrow_forward_ios_sharp,),
            ),
          ),
        ],
      ),
    );
  }
}