//홈 화면
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        ),bottomNavigationBar: BottomNavigationBar(
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
                                            OutlinedButton.icon(
                                              onPressed: () {
                                                // Respond to button press
                                              },
                                              icon: Icon(Icons.arrow_right_alt_rounded , size: 40),
                                              label: Text("Send"),
                                            ),
                                            SizedBox(height:30),
                                            OutlinedButton.icon(
                                              onPressed: () {
                                                // Respond to button press
                                              },
                                              icon: Icon(Icons.arrow_downward_sharp , size: 40),
                                              label: Text("Receive"),
                                            ),
                                          ],
                                        ),
                                      )
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
