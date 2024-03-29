import 'package:flutter/material.dart';

import '../models/character.dart';
import '../models/character_image.dart';

class CharacterCard extends StatefulWidget {
  CharacterCard({this.characterDetails});

  final Character characterDetails;


  @override
  _CharacterCardState createState() => _CharacterCardState();
}

class _CharacterCardState extends State<CharacterCard> {
  @override
  Widget build(BuildContext context) {
    Character _characterDetails = widget.characterDetails;
    return Container(
      margin: EdgeInsets.only(bottom: 10),
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
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(30))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildImage(context, _characterDetails.image),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(_characterDetails.name, style: Theme.of(context).textTheme.display1.copyWith(fontSize: 20),),
                    Expanded(
                      child: _characterDetails.description != ''
                          ? Text(_characterDetails.description,
                              style: _descriptionStyle(),
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,)
                          : Text('No description available', style: _descriptionStyle(),),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 0),
                      leading: Text('More info', style: Theme.of(context).textTheme.body1.copyWith(fontWeight: FontWeight.w700, fontSize: 12),),
                      trailing: Icon(Icons.chevron_right, color: Colors.black,),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  TextStyle _descriptionStyle(){
    return Theme.of(context).textTheme.body2.copyWith(fontSize: 13);
  }

  Widget _buildImage(BuildContext context, CharacterImage characterImage) {
    String imagePath = characterImage.path;
    String imageExtension = characterImage.extension;

    return Container(
      width: MediaQuery.of(context).size.width / 2.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(left: Radius.circular(30),),
        image: DecorationImage(image: NetworkImage('$imagePath.$imageExtension'),
            fit: BoxFit.cover),
      ),
    );
  }
}
