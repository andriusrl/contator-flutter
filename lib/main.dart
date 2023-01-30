import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// MaterialApp(
//   home: Container(
//     color: Colors.black,
//     alignment: Alignment.center,
//     child: Text('Olá mundo')
//   ),

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void decrement() {
    print('Decrements');
  }

  void increment() {
    print('Increment');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Pode entrar!',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              // letterSpacing: 10,
            ),
          ),

          const Padding(
            padding: const EdgeInsets.all(32),
            child: const Text('0',
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                )),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  // padding: const EdgeInsets.only(left: 32),
                  // padding: const EdgeInsets.all(32),
                  fixedSize: const Size(100, 100),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                      // side: BorderSide(color: Colors.green, width: 5,),
                      borderRadius: BorderRadius.circular(24)),
                ),
                child: const Text(
                  'Saiu',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                width: 32,
              ),
              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  // padding: const EdgeInsets.only(left: 32),
                  fixedSize: const Size(100, 100),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                      // side: BorderSide(color: Colors.green, width: 5,),
                      borderRadius: BorderRadius.circular(24)),
                ),
                child: const Text(
                  'Entrou',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// stless
// class MeuWidget extends StatelessWidget {
//   const MeuWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
