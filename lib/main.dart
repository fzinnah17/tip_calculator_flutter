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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const defaultBillAmount = 0.0;

  // This is the default tip percentage
  static const defaultTipPercentage = 15;

  // This is the TextEditingController which is used to keep track of the change in bill amount
  final _billAmountController =
      TextEditingController(text: defaultBillAmount.toString());

  // This is the TextEditingController which is used to keep track of the change in tip percentage
  final _tipPercentageController =
      TextEditingController(text: defaultTipPercentage.toString());

  // This stores the latest value of bill amount calculated
  double _billAmount = defaultBillAmount;

  // This stores the latest value of tip percentage calculated
  int _tipPercentage = defaultTipPercentage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 10.0,
        backgroundColor: Color.fromARGB(255, 181, 208, 223),
        title: Text("This is a calculator",
            style: TextStyle(color: Color.fromARGB(155, 0, 0, 0),
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
            letterSpacing: 1.0,
            wordSpacing: 2.0,
            shadows: [
              Shadow(
                color: Color.fromARGB(255, 117, 133, 131),
                offset: Offset(2.0, 2.0),
                blurRadius: 3.0,
              ),
            ],
            )),
      ),
      body: Container(
        color: Colors.white30,
        padding: const EdgeInsets.all(25.0),
        child: Center(child: Form(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter a number',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter a number',
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Add'),
            ),
          ],
        ))),
      ),
    );
  }
}
