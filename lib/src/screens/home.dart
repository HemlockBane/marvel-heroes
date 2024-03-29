import 'package:flutter/material.dart';


import '../constants/constants.dart';
import '../data/network.dart';
import '../models/character_data_container.dart';
import '../models/character.dart';
import '../widgets/theme.dart';
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
        title: Image.asset(marvelImage,
          height: 22,),
        actions: <Widget>[
          InkWell(
            onTap: (){},
              child: Image.asset(AppIcons.search),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 10),
        child: DefaultTabController(
            length: 3,
            child: Column(
              children: <Widget>[
                _tabBar(context: context),
                Expanded(
                    child: _characterDataContainer != null
                        ? FutureBuilder<CharacterDataContainer>(
                        future: _characterDataContainer,
                        builder: (context, dataSnapshot){

                          if(dataSnapshot.hasError){
                            //print('Error retrieving characters - ${dataSnapshot.error}');
                            return Center(
                              child: Text('Error retrieving characters!'),
                            );
                          }

                          if(!dataSnapshot.hasData){
                            return Center(
                              child: Text('No characters!'),
                            );

                          }

                          return ListView.builder(
                              itemCount: dataSnapshot.data.characters.length,
                              itemBuilder: (context, index){
                                Character characterDetails = dataSnapshot.data.characters[index];
                                return CharacterCard(characterDetails: characterDetails,);
                              });
                        }
                    )
                        : CircularProgressIndicator() )

              ],
            ),
        ),
      ),
    );
  }
}

Widget _tabBar({BuildContext context}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    child: TabBar(
        isScrollable: true,
        tabs: [
          Tab(text: 'Popular',),
          Tab(text: 'A-Z',),
          Tab(text: 'Last viewed',)
        ]),
  );
}

Widget _tabBarContent({BuildContext context}){
  return Container(
    child: TabBarView(
        children: [
          Text('Popular'),
          Text('A-Z'),
          Text('Last Viewed')
        ]),
  );
}


