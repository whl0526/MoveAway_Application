import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:move_application/style/text_style.dart';


class Info extends StatelessWidget {

  static const List<String> _my_reservation = [
    '벤치',
    '파워 렉',
    '레그 익스텐션',
    '레그 익스텐션',
    '레그 익스텐션',
  ];
  static const List<String> _my_class = [

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(14),
              child: Text('내 예약 운동기구',style: MyTextStyle(size: 20),),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              child:ListView.builder(
                itemCount: _my_reservation.length,
                itemBuilder: (BuildContext _context, int i){
                  return ListTile(

                    leading: Image.asset(
                      "icons/exercise.png",color: Colors.red[700],height: 45,),
                    title: Text(_my_reservation[i],),
                    subtitle: Text('n시 m분 ~ n시 m분',style: TextStyle(fontSize: 17),),
                  );
                },
              ) ,
            ),
            Container(
              margin: EdgeInsets.all(14),
              child: Text('내 수업시간',style: MyTextStyle(size: 20),),
            ),
            Column(
              children: [
                _my_class.isEmpty
                ? Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('예정되어있는 수업이 없습니다!',textAlign: TextAlign.center,style: TextStyle(fontSize: 23),)
                    ],
                  ),
                )
                :Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: ListView.builder(
                    itemCount: _my_reservation.length,
                    itemBuilder: (BuildContext _context, int i){
                      if(_my_class.isEmpty)return Text('예정된 수업이 없습니다 ㅠ');
                      return ListTile(
                        leading: Image.asset(
                          "icons/exercise.png",color: Colors.red[700],height: 45,),
                        title: Text(_my_reservation[i],),
                        subtitle: Text('n시 m분 ~ n시 m분',style: TextStyle(fontSize: 17),),
                      );
                    },
                  ),
                ) ,
              ],
            )
          ],
        ),
      ),
    );
  }
}