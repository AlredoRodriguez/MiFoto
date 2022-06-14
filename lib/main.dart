import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi foto',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.brown,
      ),
      home: MyHomePage(title: 'Mi foto'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
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
        automaticallyImplyLeading: false,
        title: Text(
          'UIII Act4 Diseño flutlab\n',
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(90, 20, 0, 0),
                child: Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.brown,
                      )
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 20, 0, 0),
                    child: Text(
                      'Edgar Alfredo Rodriguez Morales',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(90, 20, 0, 0),
                child: Container(
                  width: 200,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(90, 20, 0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://github.com/AlredoRodriguez/Foto/blob/main/dea2abe8-6136-49c6-b1f4-81c17cf7d5d8.jpg?raw=true',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(90, 20, 0, 0),
                child: Container(
                  width: 200,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(90, 20, 0, 0),
                child: Container(
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                    child: Text(
                      'Grado y grupo: 6to J Especialidad: Programacion',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
