import 'package:flutter/material.dart';
import 'widgets/state_card.dart';

class StatesScreen extends StatefulWidget {
  // StatesScreen empty constructor
  const StatesScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<StatesScreen> {
  final items = List<String>.generate(20, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return StateCard(
          title: 'Comentario de Peliculas',
          content: 'Me parece Excelente las Peliculas de Esta Aplicacion.',
          picUrl:
              'https://gestion.pe/resizer/WfiRMCs1_JrUBkIUgmdtb6nEEPQ=/580x330/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/ZSKIQRJFKNDT5JZSLO6IFWBAN4.jpg',
          onChat: () => {},
        );
      },
    );
  }
}
