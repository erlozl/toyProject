import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/font.dart';
import 'package:flutter_blog/data/dto/product_request.dart';
import 'package:flutter_blog/ui/pages/main/widgets/product_info.dart';

class MenuTab extends StatefulWidget {
  const MenuTab({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuTab> createState() => _MenuTabState();
}

class _MenuTabState extends State<MenuTab> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(controller: _tabController, tabs: [
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
        ]),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.green,
                ),
                ListView(
                  children: [
                    Wrap(
                      spacing: 10,
                      children: [
                        ProductInfo(),
                      ],
                    )
                  ],
                ),
                Container(
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
