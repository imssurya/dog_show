import 'package:dog_app/dog_card.dart';
import 'package:dog_app/model/dog_model_1.dart';
import 'package:flutter/material.dart';

class DogList extends StatelessWidget {
  final List<Dog> doggos;
  DogList(this.doggos);

  @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }

  ListView _buildList(context){
    return ListView.builder(
      itemCount: doggos.length,
      itemBuilder: (context,int){
        return Dogcard(doggos[int]);
      },
    );
  }
}