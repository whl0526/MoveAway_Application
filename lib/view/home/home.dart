
import 'package:flutter/material.dart';
import 'package:move_application/models/get_member_info.dart';
import 'package:move_application/style/red_container.dart';
import 'package:move_application/style/text_style.dart';


class home extends StatelessWidget{


  Widget build(BuildContext context){

    return Scaffold(
      body:FutureBuilder(
        future: getMemberInfo(1234),builder:(BuildContext context,
          AsyncSnapshot<Member_info> snapshot) {

        if (snapshot.hasData == false) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: CircularProgressIndicator(color: Colors.yellow[500],),
                )
              ],
            )
          );
        }
        return Container(
          color: Colors.white12,
          height: MediaQuery.of(context).size.height,
          child:SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),

          child:Column(
            children: <Widget>[
              Container(
                //color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                         // border: Border.all(
                          //width: 1,
                         // color:Colors.white,
                       //  ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          bottomRight: Radius.circular(22),
                        ),
                        color:Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius:35,
                            offset: Offset(5,5),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          BoxShadow(
                            blurRadius:35,
                            offset: Offset(-5,-5),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                        ],
                      ),

                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.45,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height * 0.175,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://cdnweb01.wikitree.co.kr/webdata/editor/202104/19/img_20210419150500_0107e5e5.webp'))),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  snapshot.data!.user_name,
                                  style: TextStyle(
                                      fontSize: 35,letterSpacing: 1.5),
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height*0.015,),
                                FittedBox(
                                  fit: BoxFit.cover,
                                  child: Text(
                                    '#'+snapshot.data!.userid ,
                                    style: TextStyle(
                                      fontSize:20,
                                      color:Colors.black54,
                                      ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),


                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.045),

                   //1번째 박스
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.zero,
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height*0.16,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.5,
                                  color:Colors.yellow,
                                ),
                                borderRadius: BorderRadius.circular(12.5),
                                color:Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius:35,
                                    offset: Offset(5,5),
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  BoxShadow(
                                    blurRadius:35,
                                    offset: Offset(-5,-5),
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(7),
                                child:Column(

                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                     Row(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width*0.39,
                                          child: Column(
                                            children: [
                                              Text(
                                                '이용중인 헬스장',
                                                style: TextStyle(
                                                  fontSize: 12.5,
                                                  color: Colors.black54,),
                                              ),
                                              Container(
                                                height: MediaQuery.of(context).size.height * 0.1,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage("images/wellsfit.png"),
                                                  ),
                                                ),
                                    ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context).size.width*0.45,
                                          child: Column(
                                            children: [
                                              FittedBox(
                                                fit: BoxFit.cover,
                                                child:   Text(
                                                  snapshot.data!.start_date+' ~ '+snapshot.data!.end_date,
                                                  style: TextStyle(
                                                    color: Colors.redAccent,
                                                    fontSize: 15.5,
                                                  ),
                                              ),

                                              ),
                                              SizedBox(
                                                  height: MediaQuery.of(context).size.height * 0.009),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '남은기간 : ',
                                              style: TextStyle(
                                                fontSize: 13.5,
                                                color: Colors.black,),
                                            ),
                                            Text(
                                              ' XX ',
                                              style: TextStyle(
                                                fontSize:15.5,
                                                color: Colors.redAccent,)
                                              ,
                                            ),
                                            Text(
                                              '일',
                                              style: TextStyle(
                                                fontSize: 13.5,
                                                color: Colors.black,)
                                              ,
                                            ),
                                          ],
                                        ),

                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*0.025,),


                            //2번째 박스
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height*0.16,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.5,
                                  color:Colors.yellow,
                                ),
                                borderRadius: BorderRadius.circular(12.5),
                                color:Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius:35,
                                    offset: Offset(5,5),
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  BoxShadow(
                                    blurRadius:35,
                                    offset: Offset(-5,-5),
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                ],
                              ),


                              child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  Container(
                                    width:MediaQuery.of(context).size.width*0.4,

                                    child: Column(

                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children: [
                                        Container(

                                          child: Text('현재 이용자 수',style: TextStyle(color: Colors.black54,
                                            fontSize: 12.8,
                                          ),),
                                        ),


                                        SizedBox(height: MediaQuery.of(context).size.height*0.016,),

                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.125,
                                          height: MediaQuery.of(context).size.height*0.075,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1.5,
                                              color: Colors.redAccent,
                                            ),
                                            shape: BoxShape.circle,
                                            color: Colors.white60,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius:35,
                                                offset: Offset(5,5),
                                                color: Colors.grey.withOpacity(0.01),
                                              ),
                                              BoxShadow(
                                                blurRadius:35,
                                                offset: Offset(-5,-5),
                                                color: Colors.grey.withOpacity(0.01),
                                              ),
                                            ],
                                          ),

                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children:[
                                              Text('N',textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20.5,
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),


                                      ],
                                    ),
                                  ),

                                  Container(
                                    width:MediaQuery.of(context).size.width*0.45,
                                    child: Column(

                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children: [

                                         RichText(
                                                text: TextSpan(
                                                  text: '코로나',style: TextStyle(
                                                  fontSize: 12.4,
                                                  color: Colors.black54,
                                                 ),
                                                  children: <TextSpan>[
                                                    TextSpan(text: ' N',style: TextStyle(
                                                      fontSize: 12.4,
                                                      color: Colors.redAccent,
                                                    )),
                                                    TextSpan(
                                                      text: '단계',style: TextStyle(
                                                      fontSize: 12.4,
                                                      color: Colors.black54,
                                                    )
                                                    ),
                                                    TextSpan(text: ' 수용가능 인원수',style: TextStyle(
                                                      fontSize: 12.4,
                                                      color: Colors.black54,
                                                    ),
                                                    ),

                                                  ]
                                                ),

                                              ),




                                        SizedBox(height: MediaQuery.of(context).size.height*0.016,),

                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.125,
                                          height: MediaQuery.of(context).size.height*0.075,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 1.5,
                                              color: Colors.redAccent,
                                            ),
                                            shape: BoxShape.circle,
                                            color: Colors.white60,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius:35,
                                                offset: Offset(5,5),
                                                color: Colors.grey.withOpacity(0.01),
                                              ),
                                              BoxShadow(
                                                blurRadius:35,
                                                offset: Offset(-5,-5),
                                                color: Colors.grey.withOpacity(0.01),
                                              ),
                                            ],
                                          ),

                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children:[
                                              Text('N',textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20.5,
                                                ),
                                              ),

                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            SizedBox(height: MediaQuery.of(context).size.height*0.025,),

                            //3번째 박스
                            Container(
                              height: MediaQuery.of(context).size.height*0.16,
                              width: MediaQuery.of(context).size.width * 0.9,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.5,
                                  color:Colors.yellow,
                                ),
                                borderRadius: BorderRadius.circular(12.5),
                                color:Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius:35,
                                    offset: Offset(5,5),
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  BoxShadow(
                                    blurRadius:35,
                                    offset: Offset(-5,-5),
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                ],
                              ),

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.044,
                                          child:Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                'PT (김태엽T)',
                                                style:TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 12.5,

                                                ),),
                                            ],
                                          )

                                        ),
                                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.08,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('9 - 10 (금)',style:TextStyle(
                                                color: Colors.black,
                                                fontSize: 15.5,
                                              ),
                                              ),
                                            ],
                                          ),
                                        )

                                      ],
                                    ),
                                  ),

                                  Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: MediaQuery.of(context).size.height*0.044,
                                            child:Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  '수업내용',
                                                  style:TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 12.5,

                                                  ),),
                                              ],
                                            )

                                        ),
                                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.08,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('하체수업',style:TextStyle(
                                                color: Colors.black,
                                                fontSize: 15.5,
                                              ),
                                              ),
                                            ],
                                          ),
                                        )

                                      ],
                                    ),
                                  ),

                                  Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: MediaQuery.of(context).size.height*0.044,
                                            child:Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  '남은 횟수 / 수업 횟수',
                                                  style:TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 12.5,

                                                  ),),
                                              ],
                                            )

                                        ),
                                        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                        Container(
                                          height: MediaQuery.of(context).size.height*0.08,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [


                                              Container(
                                                width: MediaQuery.of(context).size.width * 0.125,
                                                height: MediaQuery.of(context).size.height*0.075,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 1.5,
                                                    color: Colors.redAccent,
                                                  ),
                                                  shape: BoxShape.circle,
                                                  color: Colors.white60,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius:35,
                                                      offset: Offset(5,5),
                                                      color: Colors.grey.withOpacity(0.01),
                                                    ),
                                                    BoxShadow(
                                                      blurRadius:35,
                                                      offset: Offset(-5,-5),
                                                      color: Colors.grey.withOpacity(0.01),
                                                    ),
                                                  ],
                                                ),


                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children:[

                                                    Text('N/15',textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                      ),
                                                    ),

                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )

                                      ],
                                    ),
                                  ),




                                  /* RedRoundedActionButton(text: '더보기',
                                            callback: (){
                                          showDialog(context: context, builder: (BuildContext context){
                                            return AlertDialog(
                                              contentPadding: EdgeInsets.only(top: 10.0),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:  BorderRadius.all(Radius.circular(12.5)),
                                              ),

                                              backgroundColor: Colors.white,
                                              titleTextStyle: TextStyle(color: Colors.black,fontSize: 15),
                                              title: Text('나의 PT정보'),
                                              content:
                                              Container(
                                                width: MediaQuery.of(context).size.width,
                                                child:Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [

                                                    ListView.builder(
                                                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                                        shrinkWrap: true,
                                                        itemCount: 2,
                                                        itemBuilder: (BuildContext context,int i){
                                                          return ListTile(

                                                            title: Text('dd'),
                                                            onTap: (){print('aa');},

                                                          );
                                                        }),

                                                    Container(
                                                      height: MediaQuery.of(context).size.height *0.1,
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.only(
                                                              bottomLeft: Radius.circular(32.0),
                                                              bottomRight: Radius.circular(32.0)),
                                                        ),
                                                    )
                                                  ],
                                                )
                                                ,
                                              ),


                                            );
                                          });
                                          }
                                          , botton_height:0.008,
                                            botton_width: 0.01,
                                            font_size: 9,
                                            botton_color: Colors.white12),*/






                                ],
                              ),
                            ),

                          ],
                        )
                      ],
                    )
                  ],
                ),
          ),


            ],
        ),
          ),
        );
      } ,)

    );
  }
}