import 'package:flutter/material.dart';

class AcoesPage extends StatefulWidget {
  const AcoesPage({Key? key}) : super(key: key);

  @override
  _AcoesPageState createState() => _AcoesPageState();
}
const List acoes = [
  {
    "name": "ITSA4",
    "qtd": "100",
    "uni": "R\$9,83",
    "total": "R\$983,00"
  },
  {
    "name": "PETR4",
    "qtd": "100",
    "uni": "R\$28,47",
    "total": "R\$2847,00"
  },
];

class _AcoesPageState extends State<AcoesPage> {
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
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 10,
                    blurRadius: 3,)
                ]),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(acoes[0]['name'], style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black,
                      ),),
                      Text("Valor unitário: " + acoes[0]['uni'], style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black,
                      ),),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Qtd: " + acoes[0]['qtd']),
                      Text("Total: " + acoes[0]['total']),
                    ],
                  )
                ],
              ),

            ),

          ),

        ),
        const SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 10,
                    blurRadius: 3,)
                ]),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(acoes[1]['name'], style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black,
                      ),),
                      Text("Valor unitário: " + acoes[1]['uni'], style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black,
                      ),),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Qtd: " + acoes[1]['qtd']),
                      Text("Total: " + acoes[1]['total']),
                    ],
                  )
                ],
              ),

            ),

          ),

        ),
      ],
      ),
    );
  }
}


