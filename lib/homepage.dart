import 'package:flutter/material.dart';
import 'package:to_do_list/task_page.dart';
import 'SizeConfig.dart';
import 'package:flutter/widgets.dart';

import 'widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xFFF6F6F6),
            resizeToAvoidBottomInset: false,
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.zero,
                      //margin: EdgeInsets.only(bottom: 32.0),
                    ),
                    Image(
                      image: AssetImage('assets/logo.png'),
                    ),
                    //TaskCard(),
                    //Container(height: 50,width:50,color: Colors.pink,),
                    TaskCard(),
                    TaskCard(),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder:(context)=>Task_page()),).then((value) => setState((){}));
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFF7349FE),borderRadius: BorderRadius.circular(20)
                          ),
                          child: Image(image: AssetImage("assets/add_icon.png"),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
