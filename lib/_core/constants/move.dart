import 'package:flutter/material.dart';
import 'package:flutter_blog/ui/pages/auth/join_page/join_page.dart';
import 'package:flutter_blog/ui/pages/auth/login_page/login_page.dart';
import 'package:flutter_blog/ui/pages/cart/cart_page.dart';
import 'package:flutter_blog/ui/pages/post/list_page/post_list_page.dart';
import 'package:flutter_blog/ui/pages/post/write_page/post_write_page.dart';
import 'package:flutter_blog/ui/screens/main_screen.dart';

class Move {
  static String loginPage = "/login";
  static String joinPage = "/join";
  static String postListPage = "/post/list";
  static String postWritePage = "/post/write";
  static String userInfoPage = "/user/info";
  static String mainPage = "/main/productList";
  static String cartPage = "/cart/save";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    Move.loginPage: (context) => const LoginPage(),
    Move.joinPage: (context) => const JoinPage(),
    Move.postListPage: (context) => PostListPage(),
    Move.postWritePage: (context) => const PostWritePage(),
    Move.mainPage: (context) => const MainScreen(),
    Move.cartPage: (context) => const CartPage(),
  };
}
