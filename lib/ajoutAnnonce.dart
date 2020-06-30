import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ihm/EditProfile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'constants.dart';
import 'widgets/profile_list_item.dart';


class AjoutAnnoncePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var header=Column(
        children: <Widget>[
          SizedBox(height: kSpacingUnit.w * 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(height: kSpacingUnit.w * 3),
              IconButton(
                icon:Icon(Icons.home),
                onPressed: (){},
                color:Colors.white,

              ),
              CircleAvatar(
                  radius: kSpacingUnit.w * 5,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
              IconButton(
                icon:Icon(Icons.edit),
              
                onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => EditeProfile()),
                    );},
                color:Colors.white,

              ),
              SizedBox(height: kSpacingUnit.w * 3),
            ],

          ),
          SizedBox(height: kSpacingUnit.w * 1),
          IconButton(
                icon:Icon(Icons.settings),
                onPressed: (){},
                //size: ScreenUtil().setSp(kSpacingUnit.w * 2),
                color:Colors.white,
              ),
        ],
      );
    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);




    return 


Scaffold(
        body: 
        
        
        Center(
          child:  CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                title:Text("Modifier l'annonce",
                  style: TextStyle(
                      fontFamily: "Sans",
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 25.0),),
                backgroundColor: Colors.blue,
                expandedHeight: 300.0,
                flexibleSpace:  FlexibleSpaceBar(                   
                  background: Image( image:AssetImage('assets/images/appartement.jpg'),),     

                )
              ),
              SliverFixedExtentList(
                itemExtent:100.0,
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.only(top:10,left: 20.0,right: 20),
                    child:
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                        Image(image: AssetImage('assets/images/appartement.jpg'),height: 100,width: 100,),
                        Image(image: AssetImage('assets/images/studio.jpg'),height: 100,width: 100,),
                        ButtonTheme(
                          minWidth: 80.0,
                          height: 80.0,
                          child: FlatButton(
                          
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.0),
                          side: BorderSide(color: Colors.blue)),
                          textColor: Colors.blue,
                          padding: EdgeInsets.all(8.0),
                          onPressed: () {},
                          child:
                          Icon(Icons.add)
                       ),
                          
                        ),
                        
                        ],
                  ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:20,left: 20.0,right: 20),
                    child:
                    Column(
                      children: <Widget>[
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                            Text("Appartement"),
                            Icon(Icons.edit),
                            ],
                            ),
                            Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                            Text("17 Rue Chaouche Amar Naciria Boumerdes"),
                            Icon(Icons.edit),
                            ],
                            ),
                            Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                            Text("15 000 000 DA"),
                            Icon(Icons.edit),
                            ],
                            ),

                      ]
                    )
                     
                  ),
                 
                  Padding(
                    padding: const EdgeInsets.only(top:10,left: 20.0,right: 20),
                    child:
                    Column(
                      children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                            Text(
                              'Description du bien ',
                              style: TextStyle(
                              fontFamily: "Sans",
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                            ),
                            Icon(Icons.edit),
                            ],
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                            style: TextStyle(
                              fontFamily: "Sans",
                              color: Colors.black26,
                              fontWeight: FontWeight.w300,
                              fontSize: 18.0),
                          ),
                      ]
                    ),
                  ),
                  
                

                ]
                ),
              ),

            ],
          )
        ),
      
      );
   
    }
    }