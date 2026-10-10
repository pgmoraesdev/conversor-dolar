import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  double _finalValue = 0;

  final TextEditingController value = TextEditingController();

  void converterRealParaDolar(double value) { 
    const double dollar = 5.60;
    setState(() {
       _finalValue = (value / dollar);
       }
    );
  }

  //void _incrementCounter() {
  //  setState(() {
  //   
  //    _counter++;
  //  });
  //}

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(          
          mainAxisAlignment: .center,
          children: [
            TextField(
              controller: value,
              decoration: InputDecoration(
                labelText: "Teste"
              )
            ),        
            Text(
              '${_finalValue.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: () => {
                converterRealParaDolar(double.parse(value.text))
              },
              child: Text("Calcular")           
            )            
          ],
        ),
      ),
      
    );
  }
}
