import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/color.dart';
import 'package:flutter_blog/_core/constants/font.dart';
import 'package:flutter_blog/data/dto/product_request.dart';
import 'package:flutter_blog/ui/screens/home/menu/benefit_page.dart';
import 'package:flutter_blog/ui/screens/home/menu/best_page.dart';
import 'package:flutter_blog/ui/screens/home/menu/kurly_page.dart';
import 'package:flutter_blog/ui/screens/home/menu/new_product_page.dart';

class MainTabBar extends StatefulWidget {
  const MainTabBar({
    Key? key,
  }) : super(key: key);

  @override
  State<MainTabBar> createState() => _MenuTabState();
}

class _MenuTabState extends State<MainTabBar>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    List<String> categories = ["컬리추천", "신상품", "베스트", "금주혜택"];

    return Column(
      children: [
        TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              child: Text("컬리추천", style: h6()),
            ),
            Tab(
              child: Text("신상품", style: h6()),
            ),
            Tab(
              child: Text("베스트", style: h6()),
            ),
            Tab(
              child: Text("금주혜택", style: h6()),
            ),
          ],
          indicatorColor: primaryColor, // 선택된 탭 아래의 선 색상
          labelColor: primaryColor,
          indicatorSize: TabBarIndicatorSize.label,
          // 인디캐이터의 패딩
          indicatorPadding: const EdgeInsets.symmetric(vertical: 5.0),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TabBarView(
              controller: _tabController,
              children: [
                KurlyPage(),
                NewProductPage(),
                BestPage(),
                BenefitPage(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
