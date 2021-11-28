import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

const List categorias = [
  {"name": "Entrada"},
  {"name": "Saída"},
  {"name": "Ação"},
];

class _CadastroPageState extends State<CadastroPage> {
  int contaCategoria = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
        child: Column(children: [
      Container(
        decoration: const BoxDecoration(color: Color(0xff9056ab), boxShadow: [
          BoxShadow(color: Colors.white38, spreadRadius: 10, blurRadius: 3)
        ]),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 60, bottom: 25, right: 20, left: 20),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    "FinControl",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 25,
      ),
      const Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Text(
            "Escolha a categoria",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )),
      const SizedBox(
        height: 20,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(categorias.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  contaCategoria = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  margin: const EdgeInsets.only(left: 10),
                  width: 150,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: contaCategoria == index
                          ? Colors.black54
                          : Colors.transparent
                    ),
                    color: const Color(0xff9056ab),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.white, spreadRadius: 10, blurRadius: 3),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 25, right: 25, bottom: 20, top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          categorias[index]['name'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text("Nome: ", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),),
                TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 50,),
                Text("Valor: ", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),),
                TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
    ]));
  }
}
