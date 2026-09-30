import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Layout Demo',
      home: const LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row, Column & Stack Demo'),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

// Column Example
              const Text(
                "Column Widget",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Container(
                height: 60,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "Item 1",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Container(
                height: 60,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    "Item 2",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 30),

// Row Example
              const Text(
                "Row Widget",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Row(
                children: [

                  Expanded(
                    child: Container(
                      height: 80,
                      color: Colors.red,
                      child: const Center(
                        child: Text(
                          "Box 1",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Container(
                      height: 80,
                      color: Colors.orange,
                      child: const Center(
                        child: Text(
                          "Box 2",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

// Stack Example
              const Text(
                "Stack Widget",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [

                    Container(
                      width: 220,
                      height: 220,
                      color: Colors.blue.shade200,
                    ),

                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.green.shade400,
                    ),

                    Container(
                      width: 80,
                      height: 80,
                      color: Colors.red,
                    ),

                    const Text(
                      "Stack",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}