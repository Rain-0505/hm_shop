import 'package:flutter/material.dart';
import 'package:hm_shop/pages/cart/cart.dart';
import 'package:hm_shop/pages/home/home.dart';
import 'package:hm_shop/pages/mine/mine.dart';
import 'package:hm_shop/pages/category/category.dart';
//导航栏
class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //定义导航栏数据
  final List<Map<String,String>> _tabList = [
    {
      "icon": "lib/assets/demo.png",
      "active_icon": "lib/assets/active.png",
      "text": "首页",
    },   
    {
      "icon": "lib/assets/demo.png",
      "active_icon": "lib/assets/active.png",
      "text": "分类",
    },
    {
      "icon": "lib/assets/demo.png",
      "active_icon": "lib/assets/active.png",
      "text": "购物车",
    },
    {
      "icon": "lib/assets/demo.png",
      "active_icon": "lib/assets/active.png",
      "text": "我的",
    },
  ];
  //定义导航栏Widget
  List<BottomNavigationBarItem> _getTabBarWidget() {
    return List.generate(_tabList.length, (index) => BottomNavigationBarItem(
      icon: Image.asset(_tabList[index]["icon"]!,width: 30,height: 30,),
      activeIcon: Image.asset(_tabList[index]["active_icon"]!,width: 30,height: 30,),
      label: _tabList[index]["text"]!,
    ));
  }
  //定义当前选中的导航栏索引
  int _currentIndex = 0;
  //定义导航栏对应页面Widget
  List<Widget> _getChildren() {
    return [
      HomeView(),
      CategoryView(),
      CartView(),
      MineVierw(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('主页'),
      ),
      //避开安全区
      body: SafeArea(child: IndexedStack(
        index: _currentIndex,
        children: _getChildren(),//导航栏对应页面Widget
      )),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,//显示未选中标签
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: (index) {//当前点击索引
        _currentIndex = index;
          setState(() {});
        }, 
        currentIndex: _currentIndex,
        items: _getTabBarWidget()),
    );
  }
  
}