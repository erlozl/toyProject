// class Product {
//   final String thumbnail;
//   final String productTitle;
//   final String? disableTxt;
//   final String? discountTxt;
//   final String productPrice;
//
//   Product({
//     required this.productImage,
//     required this.productTitle,
//     this.disableTxt,
//     this.discountTxt,
//     required this.productPrice,
//   });
//
//   Map<String, dynamic> toJson() => {
//         "productImage": productImage,
//         "productTitle": productTitle,
//         "disableTxt": disableTxt,
//         "discountTxt": discountTxt,
//         "productPrice": productPrice,
//       };
//
// // Map 형태로 받아서 Dart 객체로 변환합니다.
//   Product.fromJson(Map<String, dynamic> json)
//       : productImage = json["productImage"],
//         productTitle = json["productTitle"],
//         disableTxt = json["disableTxt"],
//         discountTxt = json["discountTxt"],
//         productPrice = json["productPrice"];
// }
