//홈 화면
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*1차 제작 완료 */
// 차후 수정 사항
//1. App Bar 위 아래 제작하기
//2. 각 버튼에 라우팅 걸기
//3. UI 조정하기
//4. Investment Information이랑 Market Price API 가져와서 연동 시키고 UI 수정
//5. 총 자산 정보 가져와서 상단에 달러로 바꿔서 출력해주기

// 프론트 엔드 단면 화면 체크 용 run 함수
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'NOISY EMPTY CARTS WALLET',
            style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 20,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.deepPurpleAccent,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_outlined),
                title: Text('Market'),
                backgroundColor: Colors.deepPurpleAccent,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.monetization_on_rounded),
                title: Text('Crypto'),
                backgroundColor: Colors.deepPurpleAccent,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'), ),
              BottomNavigationBarItem(
                icon: Icon(Icons.wallet_travel_rounded),
                title: Text('Wallets'), backgroundColor: Colors.deepPurpleAccent,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('Settings'),
                backgroundColor: Colors.deepPurpleAccent,
              ),
            ]),
        body: Container(
          child: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                  child: ConstrainedBox(
                      constraints:
                      BoxConstraints(minHeight: viewportConstraints.maxHeight),
                      child: Container(
                          child: IntrinsicHeight(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      width: MediaQuery.of(context).size.width,
                                      color: Colors.white,
                                      height: MediaQuery.of(context).size.height * 0.30,
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              'Enter the password',
                                              style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                  ),

                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        _buildButtonColumn(Colors.deepPurpleAccent,  '1'),
                                        _buildButtonColumn(Colors.deepPurpleAccent,  '2'),
                                        _buildButtonColumn(Colors.deepPurpleAccent, '3'),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        _buildButtonColumn(Colors.deepPurpleAccent,  '4'),
                                        _buildButtonColumn(Colors.deepPurpleAccent,  '5'),
                                        _buildButtonColumn(Colors.deepPurpleAccent, '6'),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        _buildButtonColumn(Colors.deepPurpleAccent,  '7'),
                                        _buildButtonColumn(Colors.deepPurpleAccent,  '8'),
                                        _buildButtonColumn(Colors.deepPurpleAccent, '9'),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        _buildButtonColumn(Colors.deepPurpleAccent,  '0'),
                                      ],
                                    ),
                                  ),
                                ]),
                          )
                      )));
            },
          ),
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, String label) {
    //API 끌어오는 버튼 만들때 참고하기
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white, // background
              onPrimary: Colors.deepPurpleAccent, // foreground
            ),
            onPressed: () { },
            child: Text(
              label,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
          margin: const EdgeInsets.only(top: 8),
        ),
      ],
    );
  }
}
