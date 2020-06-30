import 'package:flutter/material.dart';

const String _name = "Dibbo";

class ChatMessage extends StatelessWidget {
  final String text;

  ChatMessage({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              backgroundImage: ExactAssetImage('assets/dibbo.jpeg'),
              minRadius: 5,
              maxRadius: 18,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                _name,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Text(text),
              )
            ],
          )
        ],
      ),
    );
  }
}
