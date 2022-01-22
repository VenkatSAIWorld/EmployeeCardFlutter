import 'package:flutter/material.dart';

class carddisplay extends StatelessWidget {
  const carddisplay({
    Key? key,
    required this.cd,
  }) : super(key: key);

  final cd;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.amber,
        elevation: 2.0,
        margin: EdgeInsets.fromLTRB(26.0, 26, 26, 0),
        child: Padding(
          padding: const EdgeInsets.all(48.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('${cd.image}'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '${cd.name}',
                style: TextStyle(color: Colors.green[900]),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '${cd.designation}',
                style: TextStyle(color: Colors.green[900]),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '${cd.email}',
                style: TextStyle(color: Colors.green[900]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
