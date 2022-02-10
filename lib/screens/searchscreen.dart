import 'package:ecommerce_app/widgets/searchitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GlobalData {
  static String datosusuario = '';
}

var busquedaquery = ValueNotifier<String>('');

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 29, top: 62),
          child: Row(
            children: <Widget>[
              IconButton(onPressed: () {
                Navigator.pop(context);
                //Navigator.popAndPushNamed(context, '/busqueda');
              }, icon: const Icon(Icons.arrow_back)),
              const Busqueda()
            ],
          ),
        ),
        const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Center(
              child: TextResult(),
            )),
        SearchResult()
      ],
    ));
  }
}

class TextResult extends StatefulWidget {
  const TextResult({Key? key}) : super(key: key);

  @override
  _TextResultState createState() => _TextResultState();
}

class _TextResultState extends State<TextResult> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: busquedaquery,
        builder: (context, value, widget) {
          String text='';
          if(value=='watch'){
            text='Found 4 results';
          }

         return Text(
            text,
            style: const TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w600,
                fontFamily: 'Raleway'),
          );

    }
    );
  }
}


class Busqueda extends StatefulWidget {
  const Busqueda({Key? key}) : super(key: key);

  @override
  _BusquedaState createState() => _BusquedaState();
}

class _BusquedaState extends State<Busqueda> {
  TextEditingController _searchController = new TextEditingController();
  String _searchText = "";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 267.0,
      child: TextField(
        onSubmitted: (value) {},
        controller: _searchController,
        decoration: InputDecoration(
          hintText: "Search",
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          suffixIcon: _searchText.isNotEmpty
              ? IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {},
                )
              : null,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _searchController.addListener(() {
      setState(() {
        _searchText = _searchController.text;
        GlobalData.datosusuario = _searchController.text;
        busquedaquery.value = _searchController.text;
      });
    });
  }
}

class SearchResult extends StatefulWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ValueListenableBuilder(
            valueListenable: busquedaquery,
            builder: (context, value, widget) {
              if (value == 'watch') {
                return Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 32, right: 34, top: 20),
                      child: StaggeredGridView.count(
                        crossAxisCount: 4,
                        mainAxisSpacing: 4,
                        children: const <Widget>[
                          SearchItem(),
                          SearchItem(),
                          SearchItem(),
                          SearchItem(),
                        ],
                        staggeredTiles: const [
                          StaggeredTile.count(2, 4),
                          StaggeredTile.count(2, 5),
                          StaggeredTile.count(2, 4),
                          StaggeredTile.count(
                              2, 4), // takes up 2 rows and 2 columns space
                        ],
                      ))
                );

              } else {
                return  Column(children: const <Widget>[
                  Center(
                    child: Image(
                        image: AssetImage('assets/images/itemnotfound.png')),
                  ),
                  Center(
                    child: Text('Item Not Found',
                        style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Raleway')),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                          'Try a more generic search term or try looking for alternative products.',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Raleway'),
                          textAlign: TextAlign.center),
                    ),
                  )
                ]);
              }
            }));
  }
}
