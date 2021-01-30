import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi segunda app',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool likeisPressed = false;
  bool dislikeisPressed = false;
  int likes = 0;

  var now = new DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Tarea 2 | Conociendo los Scaffold'),
          ),
          body: Column(
            children: [
              Image.asset("assets/tarea1_iteso.jpg"),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ITESO, Universidad Jesuita de Guadalajara",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("San Pedro, Tlaquepaque")
                      ],
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.thumb_up,
                              color: likeisPressed ? Colors.blue : Colors.grey,
                              size: 32,
                            ),
                            onPressed: () {
                              likeisPressed = !likeisPressed;
                              if (likes > 998) {
                              } else {
                                likes++;
                              }
                              setState(() {});
                              print("Presionado: $likeisPressed");
                            },
                          ),
                          Text("$likes"),
                          IconButton(
                            icon: Icon(
                              Icons.thumb_down,
                              color:
                                  dislikeisPressed ? Colors.red : Colors.grey,
                              size: 32,
                            ),
                            onPressed: () {
                              setState(() {});
                              if (likes < 1) {
                              } else {
                                likes--;
                              }
                              dislikeisPressed = !dislikeisPressed;
                              print("Presionado: $dislikeisPressed");
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: StreamBuilder<Object>(
                    stream: null,
                    builder: (context1, snapshot) {
                      return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                StreamBuilder<Object>(
                                    stream: null,
                                    builder: (context, snapshot) {
                                      return IconButton(
                                        icon: Icon(
                                          Icons.mail,
                                          size: 38,
                                        ),
                                        onPressed: () {
                                          final snackbar = SnackBar(
                                            content: Text('¡Correo enviado!'),
                                            action: SnackBarAction(
                                              label: 'Cerrar',
                                              onPressed: () {},
                                            ),
                                          );
                                          Scaffold.of(context1)
                                              .hideCurrentSnackBar();

                                          Scaffold.of(context1)
                                              .showSnackBar(snackbar);
                                          setState(() {});
                                        },
                                      );
                                    }),
                                Text("Correo"),
                              ],
                            ),
                            Column(
                              children: [
                                StreamBuilder<Object>(
                                    stream: null,
                                    builder: (context, snapshot) {
                                      return IconButton(
                                        icon: Icon(
                                          Icons.phone,
                                          size: 38,
                                        ),
                                        onPressed: () {
                                          final snackbar = SnackBar(
                                            content: Text('Llamando...'),
                                            action: SnackBarAction(
                                              label: 'Cerrar',
                                              onPressed: () {},
                                            ),
                                          );
                                          Scaffold.of(context1)
                                              .hideCurrentSnackBar();

                                          Scaffold.of(context1)
                                              .showSnackBar(snackbar);
                                          setState(() {});
                                        },
                                      );
                                    }),
                                Text("Llamar"),
                              ],
                            ),
                            Column(
                              children: [
                                StreamBuilder<Object>(
                                    stream: null,
                                    builder: (context, snapshot) {
                                      return IconButton(
                                        icon: Icon(
                                          Icons.directions,
                                          size: 38,
                                        ),
                                        onPressed: () {
                                          final snackbar = SnackBar(
                                            content:
                                                Text('Abriendo en Maps...'),
                                            action: SnackBarAction(
                                              label: 'Cerrar',
                                              onPressed: () {},
                                            ),
                                          );
                                          Scaffold.of(context1)
                                              .hideCurrentSnackBar();

                                          Scaffold.of(context1)
                                              .showSnackBar(snackbar);
                                          setState(() {});
                                        },
                                      );
                                    }),
                                Text("Dirección"),
                              ],
                            ),
                          ]);
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                            "El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente), es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957. La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara. Fundada en el año de 1957 por el ingeniero José Fernández del Valle y Ancira, entre otros, la universidad ha tenido una larga trayectoria. A continuación se presenta la historia de la institución en periodos de décadas."),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.info,
                      size: 38,
                    ),
                    onPressed: () {
                      if (likes % 2 != 0) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0)), //this right here
                                child: Container(
                                  height: 96,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text("$now"),
                                        SizedBox(
                                          child: RaisedButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text(
                                              "Cerrar",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            color: const Color(0xFF1BC0C5),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      } else {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0)), //this right here
                                child: Container(
                                  height: 96,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text("El contador de likes es par"),
                                        SizedBox(
                                          child: RaisedButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text(
                                              "Cerrar",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            color: const Color(0xFF1BC0C5),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      }
                    },
                  )
                ],
              )
            ],
          )),
    );
  }
}
