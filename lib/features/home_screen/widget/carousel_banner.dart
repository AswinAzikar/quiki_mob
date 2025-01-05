import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:quiki/constants/constant.dart';
import 'package:quiki/database/dummy_offer.dart';
import 'package:quiki/theme/theme.dart';
import 'package:quiki/utils/size_utils.dart';

class CarouselBanner extends StatelessWidget {
  const CarouselBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
      options: FlutterCarouselOptions(
        viewportFraction: 1,
        showIndicator: false,
        autoPlayCurve: Curves.bounceInOut,
        autoPlayInterval: Duration(seconds: 3),
        enlargeCenterPage: true,
        height: SizeUtils.height * 0.26,
        enableInfiniteScroll: true,
        autoPlay: true,
      ),
      items: cakeItems.map((e) {
        return Builder(
          builder: (context) {
            return GestureDetector(
              onTap: () {
                logan.e("Tapped on ${e.productName}");
              },
              child: Stack(
                children: [
                  Container(
                    height: SizeUtils.height * 0.24,
                    width: SizeUtils.width * 0.89,
                    decoration: BoxDecoration(
                      boxShadow: commonShadow,
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(paddingXL),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(paddingXL),
                      child: Image.network(
                          opacity: AlwaysStoppedAnimation(
                            .8,
                          ),
                          filterQuality: FilterQuality.high,
                          e.imageUrl,
                          fit: BoxFit.fill),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(padding.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          e.offerDescription,
                          softWrap: true,
                          style: context.latoBold20.copyWith(
                              decorationStyle: TextDecorationStyle.wavy,
                              color: Colors.black,
                              fontSize: 23.fSize),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
