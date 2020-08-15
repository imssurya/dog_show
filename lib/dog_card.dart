import 'package:dog_app/model/dog_model_1.dart';
import 'package:flutter/material.dart';

class Dogcard extends StatefulWidget {
  final Dog dog;
  Dogcard(this.dog);

  @override
  _DogcardState createState() => _DogcardState(dog);
}

class _DogcardState extends State<Dogcard> {
  Dog dog;
  _DogcardState(this.dog);

  Widget get dogcard {
    return Container(
      width: 290.0,
      height: 115.0,
      child: Card(
        //color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
            left: 64.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                widget.dog.name,
                style: Theme.of(context).textTheme.headline,
              ),
              Text(
                widget.dog.location,
                style: Theme.of(context).textTheme.subhead,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star,
                  ),
                  Text(':${widget.dog.rating}/10')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: Container(
        height: 115.0,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 50.0,
              child: dogcard,
            )
          ],
        ),
      ),
    );
  }
}
