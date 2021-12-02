import 'package:flutter/material.dart';
import 'widgets/offer_card.dart';

class PublicOffersScreen extends StatefulWidget {
  // PublicOffersScreen empty constructor
  const PublicOffersScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<PublicOffersScreen> {
  final items = List<String>.generate(20, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return OfferCard(
          title: 'Dejanos tus  Comentarios  para la aplicacion',
          content: 'La Vision es Ser una Comunidad Competitiva Para Netflix  .',
          arch: 'Android',
          level: 'peliculas',
          payment: 1000000,
          onCopy: () => {},
          onApply: () => {},
        );
      },
    );
  }
}
