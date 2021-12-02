import 'package:flutter/material.dart';
import 'widgets/offer_card.dart';

class UsersOffersScreen extends StatefulWidget {
  // UsersOffersScreen empty constructor
  const UsersOffersScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<UsersOffersScreen> {
  final items = List<String>.generate(30, (i) => "Usuario $i");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return PostCard(
          title: index.toString(),
          content: items[index],
          picUrl:
              'https://www.eltiempo.com/files/image_640_428/uploads/2017/06/27/595317e8f0820.jpeg',
          onChat: () => {},
        );
      },
    );
  }
}
