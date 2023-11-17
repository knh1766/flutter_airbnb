import 'package:airbnb/style.dart';
import 'package:flutter/material.dart';

import '../../size.dart';

class HomeBodyBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // 1. 상단에 마진을 준다.
      padding: const EdgeInsets.only(top: gap_m),
      // 2 이미지와 글자를 겹치게 하기 위해서 Stack 위젯을 사용한다.
      child: Stack(
        children: [
          Widget_buildBannerImage(),
          Widget_buildBannerCaption(),
        ],
      ),
    );
  }

  Widget_buildBannerImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        "assets/banner.jpg",
        fit: BoxFit.cover,
        width: double.infinity,
        height: 320,
      ),
    );
  }

  Widget_buildBannerCaption() {
    return Positioned(
        top: 40,
        left: 40,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(maxHeight: 250),
              child: Text(
                "이제 여행은 가까운곳에서",
                style: h4(mColor: Colors.white),
              ),
            ),
            SizedBox(height: gap_m),
            Container(
              constraints: BoxConstraints(
                maxWidth: 250,
              ),
              child: Text(
                "새로운공간에 머물러보세요.다양한목적에 맞는 숙소를 찾아보세요",
                style: subtitle1(mColor: Colors.white),
              ),
            ),
            SizedBox(height: gap_m),
            SizedBox(
              height: 35,
              width: 170,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "가까운 여행지 둘러보기",
                  style: subtitle2(),
                ),
              ),
            )
          ],
        ));
  }
}
