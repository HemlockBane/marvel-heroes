import 'package:flutter/material.dart';


import '../data/network.dart';
import '../models/character_data_container.dart';
import '../models/character.dart';
import '../widgets/character_card.dart';




class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<CharacterDataContainer> _characterDataContainer;

@override
  void initState() {
    super.initState();

    _characterDataContainer = getCharacters();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10, top: 20),
        child: _characterDataContainer != null
            ? FutureBuilder<CharacterDataContainer>(
                future: _characterDataContainer,
                builder: (context, dataSnapshot){
                  //print('snapshot is $dataSnapshot');

                  if(dataSnapshot.hasError){
                    print('Error retrieving characters - ${dataSnapshot.error}');
                    return Center(
                      child: Text('Error retrieving characters!'),
                    );
                  }

                  if(!dataSnapshot.hasData){
                    return Center(
                      child: Text('No characters!'),
                    );

                  }

                  if(dataSnapshot.hasData){
                    dataSnapshot.data.characters.forEach((character){
                      print(character.name);
                    });
                  }


                  return ListView.builder(
                      itemCount: dataSnapshot.data.characters.length,
                      itemBuilder: (context, index){
                        Character characterDetails = dataSnapshot.data.characters[index];
                        return CharacterCard(characterDetails: characterDetails,);
                      });
                }
            )
            : CircularProgressIndicator(),
      ),
    );
  }
}
