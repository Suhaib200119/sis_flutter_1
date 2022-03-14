import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:   Scaffold(
        appBar: AppBar(
          title:const Text("عاصمة فلسطين",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          // backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
          child: Column(
            children:  [
              Image.asset("assets/qodes.jpg"),
             const Text("مدينة القدس",
               style: TextStyle(
                fontSize: 32,
                color: Colors.grey,
                fontWeight: FontWeight.bold
              ),
             ),
              myWidget(title: "الأسم",value: "القدس "),
              myWidget(title: "المساحة",value: "125 كيلو متر"),
              myWidget(title: "السكان",value: "358000 نسمة"),
              myWidget(title: "الدولة",value: "فلسطين"),
              myWidget(title: "اسم الطالب",value: "صهيب إبراهيم أبو شعر"),

            ],
          ),
        ),
      ),
    );
  }

Widget myWidget({String? title,String? value}){
    TextStyle styleVar=TextStyle(
      fontSize: 24,
      color: Colors.grey
    );
    return Container(
      width: double.infinity,
      height: 65,
      margin:const EdgeInsets.symmetric(
        horizontal:  10,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey,width: 1.5),
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Row(
        children: [
          SizedBox( width: 2,),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,width: 1),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Text("${value}",style: styleVar,),

            ),
          ),
          SizedBox(width: 10,),
          Container(
            width: 125,
            height: 55,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,width: 1),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Text("${title}",style: styleVar,),

          ),
          SizedBox(width: 2,),

          
        ],
      ),
    );
  }

}




