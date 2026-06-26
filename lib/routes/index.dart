import 'package:flutter/material.dart';
import 'package:hm_shop/pages/login/index.dart';
import 'package:hm_shop/pages/main/index.dart';

//返回App根级Widget,用于runApp()
Widget getRootWidget() {
  return MaterialApp(
    //命名路由
    initialRoute: '/',
    routes: getRoutes(),
  );
}

//定义路由配置,返回给MaterialApp的routes参数
Map<String, Widget Function(BuildContext)> getRoutes() {
  return {
    '/': (context) =>  MainPage(),//主页路由
    '/login': (context) =>  LoginPage(),//登录页路由
  };
}