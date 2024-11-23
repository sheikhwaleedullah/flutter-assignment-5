import 'package:flutter/material.dart';
import 'package:medical/cart.dart';
import 'package:medical/home.dart';
import 'package:medical/profile.dart';

class NavigatorView extends StatefulWidget {
  const NavigatorView({super.key});

  @override
  State<NavigatorView> createState() => _NavigatorViewState();
}

class _NavigatorViewState extends State<NavigatorView> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:getScreenView(),
       
       bottomNavigationBar: BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (value) {
        setState(() {
          currentIndex= value;
        });
      },
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.white,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.grey,),label: "",),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_active_outlined,color: Colors.grey,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined,color: Colors.grey,),label: "",),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined,color: Colors.grey,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.manage_accounts_outlined,color: Colors.grey,),label: ""),
        ] ),
    );
  }
  Widget getScreenView(){
    if(currentIndex == 0){
      return const HomeView();
    }
    else if(currentIndex == 1){
      return const HomeView();
    }
    else if(currentIndex == 2){
      return const HomeView();
    }
    else if(currentIndex == 3){
      return const CartView();  
    }
    else{
      return const ProfileView();
    }
  } 
}