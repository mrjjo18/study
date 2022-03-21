import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // 최상위 위젯, 클래스
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BBANTO',
      home: const Grade(),
    ); // MaterialApp
  }
}

class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[500], // body 색상
      appBar: AppBar(
        title: Text('Introduction'),
        backgroundColor: Colors.amber[800], // app bar 색상
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // 시작점 정렬
            children: <Widget> [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/hajin_cafe.png'),
                  radius: 100.0,
                ),
              ),
              Divider(
                height: 60.0, // divider 위 아래 간격이 합쳐서 60.0
                color: Colors.grey[850],
                thickness: 0.5,
                endIndent: 30.0,
              ),
              Text('NAME',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(// 텍스트간 간격
                height: 10.0,
              ),
              Text('Ha-Jin, Jo',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(// 텍스트간 간격
                height: 30.0,
              ),
              Text('Age',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(// 텍스트간 간격
                height: 10.0,
              ),
              Text('5',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height:30.0 // 레벨이랑 row 간격
              ),
              Row(
                children: <Widget> [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0, // 체크박스랑 text 좌우 간격
                  ),
                  Text('Kindergarten',
                  style: TextStyle(
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                  ),
                ],
              ),
              Row(
                children: <Widget> [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0, // 체크박스랑 text 좌우 간격
                  ),
                  Text('Cutest child in the world.',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget> [
                  Icon(Icons.check_circle_outline),
                  SizedBox(
                    width: 10.0, // 체크박스랑 text 좌우 간격
                  ),
                  Text('Loves teddy bears',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/hajin_baby.png'),
                  radius: 40.0,
                ),
              )
            ],
          )
      ),
    );
  }
}