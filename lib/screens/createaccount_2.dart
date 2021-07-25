import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*1차 제작 완료*/
// 차후 수정 사항
//1. 입력 완료 후 Well Done 버튼 누르도록
//2. App Bar 수정
//3. Chain 고르는 화면 내려와서 체인 이미지랑 이름 같이 선택할 수 있도록 (입력 X)
//4. Well Done 버튼 누르고 결과에 따라 Error 경고나 Great Job 축하창 띄우게 구현
//5. 각 버튼 라우팅

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
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(
            'NOISY EMPTY CARTS WALLET',
          ),
        ),
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
                                  CircleAvatar(
                                    backgroundColor:
                                    Theme.of(context).primaryColor,
                                    radius: 40,
                                  ),
                                  Text(
                                    'Select a chain of your accounts to integrate, and enter your private key.',
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(30),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                ),
                              ),
                              child: Column(
                                children: <Widget>[
                                  TextField(
                                    autocorrect: true,
                                    decoration: InputDecoration(
                                      hintText: 'Select Chain',
                                      hintStyle: TextStyle(
                                        color: Colors.black,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Theme.of(context).primaryColor,
                                          width: 3,
                                        ),
                                      ),
                                      prefixIcon: IconTheme(
                                        data: IconThemeData(
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        child: Icon(Icons.attach_money),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  TextField(
                                    autocorrect: true,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      hintText: 'Enter Public Key',
                                      hintStyle: TextStyle(
                                        color: Colors.black,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Theme.of(context).primaryColor,
                                          width: 3,
                                        ),
                                      ),
                                      prefixIcon: IconTheme(
                                        data: IconThemeData(
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        child: Icon(Icons.lock),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    child: Center(
                                      child: FlatButton(
                                        onPressed: () {},
                                        padding: EdgeInsets.all(16),
                                        color: Theme.of(context).primaryColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(20),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              'WELL DONE!',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}