import 'package:flutter/material.dart';

class TpoInputScreen extends StatefulWidget {
  @override
  _TpoInputScreenState createState() => _TpoInputScreenState();
}

class _TpoInputScreenState extends State<TpoInputScreen> {
  String? _location;
  String? _style;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TPO 입력')),
      body: SingleChildScrollView(  // 화면이 작을 때 스크롤 가능하게 만듦
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              // 이미지 추가 부분
              Image.asset(
                'assets/movie_poster.jpeg', // 이미지 경로
                height: 200, // 이미지 크기 조절 가능
                fit: BoxFit.cover, // 이미지가 잘 맞게 조정
              ),
              SizedBox(height: 20), // 이미지와 다른 위젯 사이에 간격 추가

              // 장소 선택 드롭다운
              DropdownButton<String>(
                hint: Text("장소 선택"),
                value: _location,
                items: <String>['결혼식', '직장', '휴가'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _location = newValue;
                  });
                },
              ),

              // 스타일 선택 드롭다운
              DropdownButton<String>(
                hint: Text("스타일 선택"),
                value: _style,
                items: <String>['캐주얼', '포멀', '비즈니스'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _style = newValue;
                  });
                },
              ),

              // '다음' 버튼
              ElevatedButton(
                child: Text('다음'),
                onPressed: () {
                  // TPO 정보를 outfit_recommendation 페이지로 넘김
                  Navigator.pushNamed(context, '/recommendation', arguments: {
                    'location': _location,
                    'style': _style
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
