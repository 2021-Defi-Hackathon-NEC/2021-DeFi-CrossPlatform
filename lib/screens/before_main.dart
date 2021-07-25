//홈 화면 전
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 프론트 엔드 단면 화면 체크 용 run 함수
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
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
                                    color: Colors.deepPurpleAccent,
                                    height: MediaQuery.of(context).size.height * 0.30,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'NOISY EMPTY CARTS',
                                            style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'WALLET',
                                            style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(height: 30),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.white, // background
                                              onPrimary: Colors.deepPurpleAccent, // foreground
                                            ),
                                            onPressed: () { },
                                            child: Text('START'),
                                          )
                                        ],
                                      ),
                                    )
                                ),
                              ]),
                        ),
                      )
                  ));
            },
          ),
        ),
      ),
    );
  }

}
