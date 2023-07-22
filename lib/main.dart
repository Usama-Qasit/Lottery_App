import 'package:flutter/material.dart';
import 'dart:math';



void main (){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Random random =  Random();
  int x = 4;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Lottery App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery winning number is 3')),
            SizedBox(height: 20,),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x==3 ?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done_all , color: Colors.green, size: 35,),
                    SizedBox(height: 15,),
                    Text('Congratulation You have won the lottery , your number is $x\n ',textAlign: TextAlign.center,)
                  ],
                ):
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error , color: Colors.red, size: 35,),
                    SizedBox(height: 15,),
                    Text('Better luck next time your number is $x\n try again',textAlign: TextAlign.center,)
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x = random.nextInt(6);
            setState(() {

            });
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
