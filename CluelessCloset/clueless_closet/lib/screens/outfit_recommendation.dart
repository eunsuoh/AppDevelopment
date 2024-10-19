import 'package:flutter/material.dart';

class OutfitRecommendationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TPO 정보를 받아옴
    final Map<String, String> tpoInfo = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    String? location = tpoInfo['location'];
    String? style = tpoInfo['style'];

    // 장소와 스타일에 따른 간단한 코디 추천 로직
    String recommendOutfit(String? location, String? style) {
      if (location == '결혼식' && style == '포멀') {
        return '정장 또는 드레스';
      } else if (location == '직장' && style == '비즈니스') {
        return '깔끔한 셔츠와 바지, 또는 원피스';
      } else if (location == '휴가' && style == '캐주얼') {
        return '편안한 티셔츠와 반바지';
      } else {
        return '기본적인 스타일로, 편안한 복장을 추천합니다.';
      }
    }

    // 코디 추천 결과
    String outfitRecommendation = recommendOutfit(location, style);

    return Scaffold(
      appBar: AppBar(title: Text('코디 추천')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('추천 장소: $location'),
            Text('추천 스타일: $style'),
            SizedBox(height: 20),
            Text('추천 코디: $outfitRecommendation', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
