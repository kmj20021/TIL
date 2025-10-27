import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '플러터 데모',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: const MyHomePage(title: '플러터 데모 홈 페이지'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: createBody3()
      );
  }

        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [c1(),c1(),c1()]
        //   )
}

Widget createBody() {
  return Container(color: Colors.red, child: Text('Container'));
}

Widget c1() {
  return                                                
  Container(
    padding: const EdgeInsets.only(
      left: 20,
      right: 20,
    ),
    width: 200,
    height: 50,
    color:  Colors.red,
    child: Center(child:Text('Container')),
  );
}

Widget c3() {
  return Center(
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Container(
            height: 40,
            color: Colors.red,
            margin: const EdgeInsets.all(5),            
          ),
          ),
          ...List.generate(
            5, 
            (index) => Container(
              width: 40,
              height: 40,
              color: Colors.red,
              margin: const EdgeInsets.all(5),
            )
          )
        ],
      )
      );
}

Widget c4() {
  return Center( child: 
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Expanded(
        flex: 1,    //수정
        child: Container(
          height: 40,
          color: Colors.amber,
          margin: const EdgeInsets.all(5),
        ),
        ),
        Expanded(
        flex: 2,    //수정
        child: Container(
          height: 40,
          color: Colors.amber,
          margin: const EdgeInsets.all(5),
        ),
        ),
        Expanded(
        flex: 3,    //수정
        child: Container(
          height: 40,
          color: Colors.amber,
          margin: const EdgeInsets.all(5),
        ),
        ),
    ],
  )
  );
}

Widget c5() {
  return Center( child: 
  Column(
    children: [
      Row(
        children: [
          Container(
            height: 50,
            width: 50,
            color: Colors.amber,
          )
        ],
      )
    ],
  )
  );
}


Widget createBody3() {
  return Center(
    child: Container(
      width: 300,
      height: 300,
      color: Colors.blue,
      child: Column(
        children: [
        Expanded(
          flex : 1,
          child: Row( 
          children: [
            Expanded(child: Container(color: Colors.orange,)),
            Expanded(child: Container(color: Colors.red,))
          ]
          ),
          ),
          Expanded(flex:1, child: Container(color: Colors.blue))
      ],
      ),
    ),
  );
}