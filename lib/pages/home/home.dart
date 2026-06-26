import 'package:flutter/material.dart';
import 'package:hm_shop/components/Home/HmCategory.dart';
import 'package:hm_shop/components/Home/HmHot.dart';
import 'package:hm_shop/components/Home/HmMoreList.dart';
import 'package:hm_shop/components/Home/HmSlider.dart';
import 'package:hm_shop/components/Home/HmSuggestion.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // 获取滚动组件的内容
  List<Widget> _getScrollChildren() {
    return [
      SliverToBoxAdapter(child: HmSlider()),//轮播图
      //SliverGrid和SliverList只能纵向滚动
      SliverToBoxAdapter(child: HmCategory()),//横向滚动分类
      SliverToBoxAdapter(child: HmSuggestion()),//推荐
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              child: HmHot(),
            ),
            SizedBox(width: 10),
            Expanded(
              child: HmHot(),
            ),
          ],  
          )),
        
        ),//热门
      HmMorelist(),//更多
    ];
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: _getScrollChildren(),
    );
  }
}