import 'package:ecommerce_app/widgets/caroussel.dart';
import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 8.0),

      height: 430,
      child: ContainedTabBarView(

        tabBarProperties: const TabBarProperties(unselectedLabelColor: Color(0xff9a9a9d),labelColor: Color(0xff5956E9),labelPadding: EdgeInsets.zero,margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.only(left: 48,bottom: 10,top:5),indicatorColor: Color(0xff5956E9)),
        tabs: const [
          Text('Wearable',style: TextStyle(fontFamily: 'Raleway',fontSize: 17.0,fontWeight: FontWeight.w600),),
          Text('Laptops',style: TextStyle(fontFamily: 'Raleway',fontSize: 17.0,fontWeight: FontWeight.w600),),
          Text('Phones',style: TextStyle(fontFamily: 'Raleway',fontSize: 17.0,fontWeight: FontWeight.w600),),
          Text('Drones',style: TextStyle(fontFamily: 'Raleway',fontSize: 17.0,fontWeight: FontWeight.w600),),
        ],
        views: const [
          Caroussel(),
          Caroussel(),
          Caroussel(),
          Caroussel(),
        ],
        onChange: (index) => print(index),

      ),
    );

  }
}
