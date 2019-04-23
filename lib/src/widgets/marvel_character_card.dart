import 'package:flutter/material.dart';

class MarvelCharacterCard extends StatefulWidget {
  @override
  _MarvelCharacterCardState createState() => _MarvelCharacterCardState();
}

class _MarvelCharacterCardState extends State<MarvelCharacterCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 70,
                spreadRadius: -80,
                offset: Offset(0, 40),
            ),
          ],
      ),
      child: Card(
        elevation: 16,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(30))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30),
                ),
                image: DecorationImage(
                    image: AssetImage('assets/images/download.jpeg'),
                  fit: BoxFit.cover
                )
              ),
              width: MediaQuery.of(context).size.width / 2.1,

            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Wolverine'),
                  Text('James Howlett'),
                  Text('Is a fictional character appearing in American comic books published by Marvel'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
