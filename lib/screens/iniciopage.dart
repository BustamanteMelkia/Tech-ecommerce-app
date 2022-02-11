import 'package:ecommerce_app/screens/searchscreen.dart';
import 'package:ecommerce_app/widgets/carditem.dart';
import 'package:ecommerce_app/widgets/caroussel.dart';
import 'package:ecommerce_app/widgets/drawer.dart';
import 'package:ecommerce_app/widgets/tabbarmenu.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = new TextEditingController();
    String _searchText = "";
    return Scaffold(
      body: Container(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 63.0, 0.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              right: 20,
                            ),
                            child: IconButton(
                                onPressed: () {
                                  print('Presionando');
                                  AppDrawer.of(context)?.toggle();
                                },
                                icon: Icon(Icons.menu, size: 30)),
                          ),
                          SizedBox(
                              width: 267.0,
                              child: TextField(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => SearchScreen()),
                                  );
                                },
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
                              ))
                        ],
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(right: 40, top: 55.0, left: 50),
                      child: Text(
                        'Order online collect in store',
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 34.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    //Caroussel()
                    const Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: SelectionScreen(),
                    )
                  ],
                ),
              ))),
    );
  }
}
