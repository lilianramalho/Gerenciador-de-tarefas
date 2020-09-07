import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CardTodo extends StatefulWidget {
  @override
  _CardTodoState createState() => _CardTodoState();
}

class _CardTodoState extends State<CardTodo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 150,
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              topLeft: Radius.circular(25),
              bottomRight: Radius.circular(25)),
          color: Color(0xfff5f6fa),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xffced6e0),
              blurRadius: 20.0,
            ),
          ]),
      child: Row(children: <Widget>[
        Container(
          height: 110,
          width: 3,
          decoration: BoxDecoration(
            color: Color(0xff1dd1a1),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10),
              child: AutoSizeText(
                "Titulo da tarefa",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: AutoSizeText(
                "Descrição da tarefa",
              ),
            ),
          ],
        )
      ]),
    );
  }
}
