import 'package:flutter/material.dart';
import 'package:latihan1/screen/navbar/page_grid_view.dart';
import 'package:latihan1/screen/navbar/page_list_view.dart';
import 'package:latihan1/screen/navbar/page_register.dart';
class PageTabBar extends StatefulWidget{
  const PageTabBar({super.key});

  @override
  State<PageTabBar> createState() => _PageTabBarState();
  }

  class _PageTabBarState extends State<PageTabBar> with SingleTickerProviderStateMixin {
    late TabController tabController;
    @override
    void initState(){
      super.initState();
      tabController = TabController(length: 3, vsync: this);
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Nav Bar", style: TextStyle(color: Colors.white),),
      ),
      body: TabBarView(controller: tabController, children: [PageRegister(), PageListView(), PageGridView()]),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(controller: tabController,tabs: [
          Tab(text: "form register", icon: Icon(Icons.input),),
          Tab(text: "ListView", icon: Icon(Icons.input),),
          Tab(text: "Grid View", icon: Icon(Icons.input),),
        ],),
      ),

    );
  }
}