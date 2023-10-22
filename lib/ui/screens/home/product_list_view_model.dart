import 'package:dio/dio.dart';
import 'package:flutter_blog/data/dto/product_request.dart';
import 'package:flutter_blog/data/dto/response_dto.dart';
import 'package:flutter_blog/data/dto/toyresponse_dto.dart';
import 'package:flutter_blog/data/model/product.dart';
import 'package:flutter_blog/data/repository/product_repository.dart';
import 'package:flutter_blog/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 창고데이터
class ProductListModel {
  List<ProductDTO> products;
  ProductListModel(this.products);
}

// 창고
class ProductListViewModel extends StateNotifier<ProductListModel?> {
  final mContext = navigatorKey.currentContext;

  ProductListViewModel(super._state, this.ref);
  Ref ref;

  Future<void> notifiyInit() async {
    ToyResponseDTO toyResponseDTO =
        await ProductRepository().fetchProductList();

    state = ProductListModel(toyResponseDTO.response);
  }
}

// 창고 관리자
final productListProvider =
    StateNotifierProvider<ProductListViewModel, ProductListModel?>((ref) {
  return ProductListViewModel(null, ref)..notifiyInit();
});
