import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conversor de Dolar',
      theme: ThemeData(        
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Conversor de Real para Dolar'),
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
  double _finalValue = 0;

  final TextEditingController value = TextEditingController();

  void converterRealParaDolar(double value) { 
    const double dollar = 5.60;
    setState(() {
       _finalValue = (value / dollar);
       }
    );
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,textAlign: .justify),
        centerTitle: true,     
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,                                   
          crossAxisAlignment: .center,
          
          children: [
            TextField(
              controller: value,
              decoration: InputDecoration(
                labelText: "Valor em REAL",
                alignLabelWithHint: true,
                floatingLabelAlignment: FloatingLabelAlignment.center,
              ),
              textAlign: .center,
            ),        
            Text(
              "DOLAR: ${_finalValue.toStringAsFixed(2)}",
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: .start,
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