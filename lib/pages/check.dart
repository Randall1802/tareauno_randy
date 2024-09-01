import 'package:flutter/material.dart';


class Check extends StatefulWidget {
  //propiedades del widget. las q haya required seran de a webo.

  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

//como es stateful maneja ese estado
class _CheckState extends State<Check> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    //widget que ya nos da ciertas propiedades pa q se vea bien la app, caract visuales.
    return Scaffold(
      appBar: AppBar(title: const Text('Tarea Uno')),
      body: Botones(enabled: true),
    ); //Text('Contador');
  }
}

class Botones extends StatelessWidget{
  const Botones({super.key, required this.enabled});

  final bool enabled;

  @override
  Widget build(BuildContext context){
    final VoidCallback? onPressed = enabled ? () {} : null;

    return Padding(padding: const EdgeInsets.all(30.0), //da espacio del borde de la pantalla
    child: Center(
      // child: ListView(
      //   padding: const EdgeInsets.all(8),
      //   children: <Widget>[
      //     Container(
      //       height: 50,
      //       color: const Color.fromARGB(255, 218, 241, 9),
      //       child: const SizedBox(
      //            width: 50.0,
      //            height: 50.0,
      //            child: Card(child: Text('Un sized box!')),
      //          ),
      //     ),
      //     Container(
      //       //height: 50,
      //       color: const Color.fromARGB(255, 15, 129, 235),
      //       child: Container
      //         (
      //           margin: const EdgeInsets.all(10.0),
      //           color: Colors.deepOrangeAccent,
      //           width: 300,
      //           height: 95,
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                 Text('Hola'),
      //                 ],
      //               ),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                 Text('Hola renglón 2')
      //                 ],
      //               ),
      //               FilledButton(onPressed: onPressed, child: const Text('Boton'))
      //             ],
      //           )    
      //         ),
      //     ),
      //     Container(
      //       //height: 50,
      //       color: const Color.fromARGB(255, 168, 14, 35),
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Image.network('https://cdn2.mediotiempo.com/uploads/media/2024/08/30/top-chivas-amazon-1_0_0_823_488.jpg', alignment: Alignment.center,),
      //       )
      //     ),
      //     Container(
      //       color: const Color.fromARGB(255, 168, 14, 35),
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Image.network('https://cdn2.mediotiempo.com/uploads/media/2024/08/30/top-chivas-amazon-1_0_0_823_488.jpg', alignment: Alignment.center,),
      //       )
      //     )
      //   ],
      // ),

      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(15),
        crossAxisSpacing: 20,
        mainAxisSpacing: 15,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.deepPurple[100],
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 50,
                  color: const Color.fromARGB(255, 0, 51, 255),
                  child: const Center(child: Text('Esto es')),
                ),
                Container(
                  height: 50,
                  color: const Color.fromARGB(255, 7, 110, 255),
                  child: const Center(child: Text('Un list view')),
                ),
                Container(
                  height: 50,
                  color: const Color.fromARGB(255, 179, 246, 255),
                  child: const Center(child: Text('xd')),
                ),
              ],
            )
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.deepPurple[200],
            child: const SizedBox(
              width: 50.0,
              height: 50.0,
              child: Card(child: Text('Un sized box!')),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.deepPurple[300],
            child:Container
            (
              margin: const EdgeInsets.all(10.0),
              color: Colors.deepOrangeAccent,
              width: 300,
              height: 95,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('Hola'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('Hola renglón 2')
                    ],
                  ),
                  FilledButton(onPressed: onPressed, child: const Text('Boton'))
                ],
              )    
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.deepPurple[400],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network('https://cdn2.mediotiempo.com/uploads/media/2024/08/30/top-chivas-amazon-1_0_0_823_488.jpg', alignment: Alignment.center),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(2),
            color: Colors.deepPurple[500],
            child: Form(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Si lees?'
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Si lees doble?'
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: ElevatedButton(onPressed: (){}, child: const Text('No jala ja')),
                  )
                ],
              )
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.deepPurple[600],
            child: const Text('Esto sobra del gridview'),
          ),
        ],
      ),

      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: <Widget>[
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         SizedBox(
      //           width: 100.0,
      //           height: 50.0,
      //           child: Card(child: Text('Un sized box!')),
      //         ),
      //         Container(
      //           margin: const EdgeInsets.all(10.0),
      //           color: Colors.deepOrangeAccent,
      //           width: 300,
      //           height: 95,
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                 Text('Hola'),
      //                 ],
      //               ),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                 Text('Hola renglón 2')
      //                 ],
      //               )
      //             ],
      //           )    
      //         ),
      //         FilledButton(onPressed: onPressed, child: const Text('Boton')),
      //         Image.network('https://cdn2.mediotiempo.com/uploads/media/2024/08/30/top-chivas-amazon-1_0_0_823_488.jpg', alignment: Alignment.center,),
      //         Form(
      //           child:Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               TextFormField(
      //                 decoration: InputDecoration(
      //                   hintText: 'Si lees?'
      //                 ),
      //               ),
      //               TextFormField(
      //                 decoration: InputDecoration(
      //                   hintText: 'Si lees doble?'
      //                 ),
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.symmetric(vertical: 16.0),
      //                 child: ElevatedButton(onPressed: (){}, child: const Text('No jala ja')),
      //               )
      //             ],
      //           )
      //         ),

      //       ]
      //     ),
      //   ],
      // ),
      
    ));
  }
}