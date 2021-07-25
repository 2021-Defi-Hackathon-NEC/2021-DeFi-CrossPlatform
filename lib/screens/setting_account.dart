import 'package:flutter/material.dart';

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
                title: Text('Home'),),
              BottomNavigationBarItem(
                icon: Icon(Icons.wallet_travel_rounded),
                title: Text('Wallets'),
                backgroundColor: Colors.deepPurpleAccent,
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
                                    width: MediaQuery
                                        .of(context)
                                        .size
                                        .width,
                                    color: Colors.deepPurpleAccent,
                                    height: MediaQuery
                                        .of(context)
                                        .size
                                        .height * 0.30,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: <Widget>[
                                          Text(
                                            'Setting > Account',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(height: 25),
                                          Text(
                                            ' Account ',
                                            style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
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
                                          SizedBox(height: 50),
                                          Row(
                                              children: [
                                              ]
                                          ),
                                          SizedBox(height: 30),
                                          Row(
                                              children: [
                                              ]
                                          ),
                                        ]),

                                  ),
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