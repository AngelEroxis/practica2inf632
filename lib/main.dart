import 'package:flutter/material.dart';

void main() {
  runApp(const Cacho());
}

class Cacho extends StatelessWidget {
  const Cacho({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GameCacho(),
    );
  }
}

class GameCacho extends StatefulWidget {
  const GameCacho({super.key});

  @override
  State<GameCacho> createState() => _GameCachoState();
}

class _GameCachoState extends State<GameCacho> {
  int balas = 0;
  int tontos = 2;
  int tricas = 3;
  int cuadras = 4;
  int quinas = 5;
  int senas = 6;
  int escalera = 0;
  final List<int> values = [0, 20, 25];
  int full = 0;
  final List<int> values1 = [0, 30, 35];
  int poker = 0;
  final List<int> values2 = [0, 40, 45];
  int grande = 0;
  final List<int> values3 = [0, 50];
  bool dormida = false;

  void buttonBalasPress() {
    setState(() {
      if (balas < 5)
        balas++;
      else
        balas = 0;
    });
  }

  void buttonTontosPress() {
    setState(() {
      if (tontos < 10)
        tontos += 2;
      else
        tontos = 0;
    });
  }

  void buttonTricasPress() {
    setState(() {
      if (tricas < 15)
        tricas += 3;
      else
        tricas = 0;
    });
  }

  void buttonCuadrasPress() {
    setState(() {
      if (cuadras < 20)
        cuadras += 4;
      else
        cuadras = 0;
    });
  }

  void buttonQuinasPress() {
    setState(() {
      if (quinas < 25)
        quinas += 5;
      else
        quinas = 0;
    });
  }

  void buttonSenasPress() {
    setState(() {
      if (senas < 30)
        senas += 6;
      else
        senas = 0;
    });
  }

  void buttonEscaleraPress() {
    setState(() {
      int currentIndex = values.indexOf(escalera);
      escalera = values[(currentIndex + 1) % values.length];
    });
  }

  void buttonFullPress() {
    setState(() {
      int currentIndex = values1.indexOf(full);
      full = values1[(currentIndex + 1) % values1.length];
    });
  }

  void buttonPokerPress() {
    setState(() {
      int currentIndex = values2.indexOf(poker);
      poker = values2[(currentIndex + 1) % values2.length];
    });
  }

  void buttonGrandePress() {
    setState(() {
      int currentIndex = values3.indexOf(grande);
      grande = values3[(currentIndex + 1) % values3.length];
    });
  }

  void buttonDormidaPress() {
    setState(() {
      dormida = !dormida;
    });
  }

  void buttonReiniciarPress() {
    setState(() {
      balas = 0;
      tontos = 0;
      tricas = 0;
      cuadras = 0;
      quinas = 0;
      senas = 0;
      escalera = 0;
      full = 0;
      poker = 0;
      grande = 0;
      dormida = false;
    });
  }

  void navigateToGrid(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            GridScreen(numTableros: balas), //Cambiar segun se requiera
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tablero del juego de Cacho',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 97, 203, 235),
      ),
      backgroundColor: const Color.fromARGB(255, 194, 217, 224),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => null,
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor: const Color.fromARGB(255, 186, 192, 230),
                ),
                child: Column(
                  children: <Widget>[
                    const Text(
                      "Balas",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () => buttonBalasPress(),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        backgroundColor:
                            const Color.fromARGB(255, 148, 163, 247),
                      ),
                      child: Text(
                        '$balas',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () => null,
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor: const Color.fromARGB(255, 148, 163, 247),
                ),
                child: Column(
                  children: <Widget>[
                    const Text(
                      "Escalera",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: buttonEscaleraPress,
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        backgroundColor:
                            const Color.fromARGB(255, 186, 192, 230),
                      ),
                      child: Text(
                        '$escalera',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () => null,
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor: const Color.fromARGB(255, 186, 192, 230),
                ),
                child: Column(
                  children: <Widget>[
                    const Text(
                      "Cuadras",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: buttonCuadrasPress,
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        backgroundColor:
                            const Color.fromARGB(255, 148, 163, 247),
                      ),
                      child: Text(
                        '$cuadras',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => null,
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor: const Color.fromARGB(255, 186, 192, 230),
                ),
                child: Column(
                  children: <Widget>[
                    const Text(
                      "Tontos",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: buttonTontosPress,
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        backgroundColor:
                            const Color.fromARGB(255, 148, 163, 247),
                      ),
                      child: Text(
                        '$tontos',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () => null,
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor: const Color.fromARGB(255, 148, 163, 247),
                ),
                child: Column(
                  children: <Widget>[
                    const Text(
                      "Full",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: buttonFullPress,
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        backgroundColor:
                            const Color.fromARGB(255, 186, 192, 230),
                      ),
                      child: Text(
                        '$full',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () => null,
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor: const Color.fromARGB(255, 186, 192, 230),
                ),
                child: Column(
                  children: <Widget>[
                    const Text(
                      "Quinas",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: buttonQuinasPress,
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        backgroundColor:
                            const Color.fromARGB(255, 148, 163, 247),
                      ),
                      child: Text(
                        '$quinas',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => null,
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor: const Color.fromARGB(255, 186, 192, 230),
                ),
                child: Column(
                  children: <Widget>[
                    const Text(
                      "Tricas",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: buttonTricasPress,
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        backgroundColor:
                            const Color.fromARGB(255, 148, 163, 247),
                      ),
                      child: Text(
                        '$tricas',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () => null,
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor: const Color.fromARGB(255, 148, 163, 247),
                ),
                child: Column(
                  children: <Widget>[
                    const Text(
                      "Poker",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: buttonPokerPress,
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        backgroundColor:
                            const Color.fromARGB(255, 186, 192, 230),
                      ),
                      child: Text(
                        '$poker',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () => null,
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor: const Color.fromARGB(255, 186, 192, 230),
                ),
                child: Column(
                  children: <Widget>[
                    const Text(
                      "Senas",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: buttonSenasPress,
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        backgroundColor:
                            const Color.fromARGB(255, 148, 163, 247),
                      ),
                      child: Text(
                        '$senas',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => null,
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor: const Color.fromARGB(255, 148, 163, 247),
                ),
                child: Column(
                  children: <Widget>[
                    const Text(
                      "Grande",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: buttonGrandePress,
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        backgroundColor:
                            const Color.fromARGB(255, 186, 192, 230),
                      ),
                      child: Text(
                        '$grande',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () => null,
                style: ElevatedButton.styleFrom(
                  shape: BeveledRectangleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor: const Color.fromARGB(255, 148, 163, 247),
                ),
                child: Column(
                  children: <Widget>[
                    const Text(
                      "Dormida",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: buttonDormidaPress,
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(20),
                        backgroundColor:
                            const Color.fromARGB(255, 186, 192, 230),
                      ),
                      child: Text(
                        dormida ? "Ganas !!!" : "---",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: buttonReiniciarPress,
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      backgroundColor: const Color.fromARGB(255, 248, 124, 124),
                    ),
                    child: const Text(
                      "Reiniciar",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () => navigateToGrid(context),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              backgroundColor: const Color.fromARGB(255, 139, 231, 147),
            ),
            child: const Text(
              "Mostrar Grilla",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class GridScreen extends StatelessWidget {
  final int numTableros;

  const GridScreen({super.key, required this.numTableros});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grilla de Tableros de Cacho'),
        backgroundColor: const Color.fromARGB(255, 97, 203, 235),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
        ),
        itemCount: numTableros,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Center(
              child: Text(
                'Tablero ${index + 1}',
                style: TextStyle(fontSize: 24),
              ),
            ),
          );
        },
      ),
    );
  }
}
