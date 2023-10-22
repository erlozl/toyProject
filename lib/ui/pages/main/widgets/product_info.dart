import 'package:flutter/material.dart';
import 'package:flutter_blog/_core/constants/font.dart';
import 'package:flutter_blog/_core/constants/size.dart';
import 'package:flutter_blog/data/dto/product_request.dart';
import 'package:flutter_blog/ui/pages/main/product_list_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductInfo extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ProductListModel? model = ref.watch(productListProvider);

    if (model == null) {
      return CircularProgressIndicator();
    } else {
      return Column(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "${model!.products[0].thumbnail}",
                  fit: BoxFit.cover,
                  width: 175,
                  height: 225,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "${model!.products[1].seller}",
                        style: discountText(),
                      ),
                      WidgetSpan(
                        child: SizedBox(width: smallGap), // 여기서 간격을 조절
                      ),
                      TextSpan(
                        text: "${model!.products[2].seller}",
                        style: productPriceText(),
                      ),
                    ],
                  ),
                ),
                Text(
                  "${model!.products[3].seller}",
                  style: disabledText(),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "${model!.products[4].seller}",
                        style: discountText(),
                      ),
                      WidgetSpan(
                        child: SizedBox(width: smallGap), // 여기서 간격을 조절
                      ),
                      TextSpan(
                        text: "${model!.products[5].seller}",
                        style: productPriceText(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: mediumGap,
                )
              ],
            ),
          ),
        ],
      );
    }
  }
}
