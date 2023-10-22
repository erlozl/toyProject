import 'package:flutter_blog/_core/constants/http.dart';
import 'package:flutter_blog/data/dto/product_request.dart';
import 'package:flutter_blog/data/dto/response_dto.dart';
import 'package:flutter_blog/data/dto/toyresponse_dto.dart';
import 'package:flutter_blog/data/model/product.dart';
import 'package:logger/logger.dart';

class ProductRepository {
  Future<ToyResponseDTO> fetchProductList() async {
    try {
      Logger().d("야야야야");
      final response = await dio.get("/api/products");
      Logger().d("야야야야222222222");

      Logger().d(response.data);

      ToyResponseDTO toyResponseDTO = ToyResponseDTO.fromJson(response.data);
      Logger().d("야야3333");
      List<dynamic> mapList = toyResponseDTO.response as List<dynamic>;
      List<ProductDTO> productList =
          mapList.map((e) => ProductDTO.fromJson(e)).toList();
      toyResponseDTO.response = productList;
      return toyResponseDTO;
    } catch (e) {
      return ToyResponseDTO(success: false, response: null, error: "오류");
    }
  }
}
