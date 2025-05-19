import 'package:ecommerce_admin_app/containers/dashboard_text.dart';
import 'package:ecommerce_admin_app/containers/home_button.dart';
import 'package:flutter/material.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Admin Dashboard")),
      body: Column(
        children: [
          Container(
            height: 235,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
            decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DashboardText(keyword: "Total Products", value: "100"),
              ],
            ),
          ),
          //button for admin
          Row(
            children: [
              HomeButton(onTap: (){}, name: "Orders"),
               HomeButton(onTap: (){}, name: "All Products"),
            ],
          ),
            Row(
            children: [
              HomeButton(onTap: (){}, name: "Promos"),
               HomeButton(onTap: (){}, name: "Banners"),
            ],
          ),
            Row(
            children: [
              HomeButton(onTap: (){}, name: "Categories"),
               HomeButton(onTap: (){}, name: "Coupons"),
            ],
          ),
        ],
      ),
    );
  }
}
