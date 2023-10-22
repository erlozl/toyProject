import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/font.dart';
import 'package:flutter_blog/_core/constants/theme.dart';
import 'package:flutter_blog/data/dto/product_request.dart';
import 'package:flutter_blog/data/model/product.dart';
import 'package:flutter_blog/ui/pages/cart/cart_page.dart';
import 'package:flutter_blog/ui/pages/main/product_list_view_model.dart';
import 'package:flutter_blog/ui/pages/main/widgets/menu_tab.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends ConsumerWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductListModel? model = ref.watch(productListProvider);
    List<ProductDTO> products = [];

    if (model != null) {
      products = model.products;
    } else {
      CircularProgressIndicator();
    }
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/logo_dark.png",
          width: 100,
          height: 50,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/cart.svg", // SVG 이미지 파일 경로
                width: 20, // 이미지 너비
                height: 20, // 이미지 높이
              ),
            ),
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverList(
              delegate: SliverChildListDelegate([]),
            ),
          ];
        },
        body: MenuTab(),
      ),
    );
  }
}
