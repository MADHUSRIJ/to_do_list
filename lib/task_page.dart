import 'package:flutter/material.dart';
class Task_page extends StatefulWidget {
  const Task_page({Key? key}) : super(key: key);

  @override
  State<Task_page> createState() => _Task_pageState();
}

class _Task_pageState extends State<Task_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 24,
                      bottom: 6
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(24),
                            child: Image(
                              image:AssetImage(
                                'assets/image/back_arrow_icon.png'
                              )
                            ),
                          ),
                        ),
                        Expanded(child: TextField(
                          //--------------------
                        )),
                        Visibility(child: Padding(
                          padding: EdgeInsets.only(
                            bottom: 12
                          ),

                        ))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
