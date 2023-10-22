import 'package:flutter_blog/_core/constants/http.dart';
import 'package:flutter_blog/data/dto/product_request.dart';
import 'package:flutter_blog/data/dto/response_dto.dart';
import 'package:flutter_blog/data/model/product.dart';
import 'package:logger/logger.dart';

class ProductRepository {
  Future<ResponseDTO> fetchProductList() async {
    try {
      Logger().d("야야야야");
      final response = await dio.get("/api/products");
      Logger().d("야야야야222222222");
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      List<dynamic> mapList = responseDTO.data as List<dynamic>;
      List<ProductDTO> productList =
          mapList.map((e) => ProductDTO.fromJson(e)).toList();
      responseDTO.data = productList;
      return responseDTO;
    } catch (e) {
      return ResponseDTO(-1, "오류", null);
    }
  }
}
