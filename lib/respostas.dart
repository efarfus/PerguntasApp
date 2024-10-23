import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String resposta;
  final void Function() onSelected;
  Respostas(this.resposta, this.onSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(50, 5, 50, 5),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, foregroundColor: Colors.white),
          onPressed: onSelected,
          child: Text(resposta)),
    );
  }
}
