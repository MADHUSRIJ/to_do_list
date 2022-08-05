import 'package:flutter/material.dart';
import 'homepage.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({Key? key}) : super(key: key);
  // final String title;
  // TaskCard({required this.title});


  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,

      padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 74.0),
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: Colors.blue,
            width: 5,
          )
      ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get Started !",
                  style: TextStyle(
                      color: Color(0xFF211551),
                      fontSize: 22.0,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 20),
                Text(
                  "Hello user! Welcome to To_Do app,this is an app where you can add an task,edit or delete to start using this app",
                  style: TextStyle(
                      color: Color(0xFF211551),
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Transform.translate(offset: Offset(200,90),
              child: Positioned(bottom: 0.0,right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color:Color(0xFF7349FE),shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.chevron_right,size: 30,),

                  )),
            )

          ],
        )
    );

  }
}
