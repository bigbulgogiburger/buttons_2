import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('버튼'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('buttonStyle'),
              style: ButtonStyle(
                //Material State
                //
                // hovered - 호버링 상태 (마우스 커서를 올려놓은 상태) -모바일에는 호버링 상태가 없음
                // focused - 포커스 됐을 때에 (텍스트 필드) - 모바일에는 포커스가 없다.
                // pressed - 눌렸을 때에
                // dragged - 드래그 되었을 때에
                // selected - 선택됐을 때에 (체크박스, 라디오 버튼)
                // scrollUnder - 다른 컴포넌트 밑으로 스크롤링 됐을 때에
                // disabled - 비활성화 됐을 때에
                // error - 에러상태
                backgroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.blue;
                  }
                  // return null -> 기본 값일 때에, == return Colors.white;
                  return Colors.green;
                }),
                foregroundColor: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.white;
                    }

                    return Colors.red;
                  },
                ),
                padding: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return EdgeInsets.all(100.0);
                    }
                    return EdgeInsets.all(20.0);
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  //메인 칼라(primary)
                  primary: Colors.red,
                  //글자와 애니메이션 칼라
                  onPrimary: Colors.black,
                  // 그림자 색깔
                  shadowColor: Colors.green,
                  //3D 입체감의 높이
                  elevation: 1.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                  padding: EdgeInsets.all(32.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 4.0,
                  )),
              child: Text('ElevatedButton'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  primary: Colors.green,
                  backgroundColor: Colors.amber,
                  shadowColor: Colors.blue,
                  elevation: 10.0),
              child: Text('OutlinedButton'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('TextButton'),
              style: TextButton.styleFrom(
                primary: Colors.blue,
                backgroundColor: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}
