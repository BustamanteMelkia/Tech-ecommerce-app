


import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(

        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.elliptical(20.0, 20.0)),
          splashColor: Colors.white,
          onTap: (){
            Navigator.pushNamed(context, '/singleitem');
          },
          child:  SizedBox(
            width: 156,
            height: 252,
            child: Stack(
              children: <Widget>[
                Container(alignment: const Alignment(-0.9,-2.0),child: const Image(image: AssetImage('assets/images/applewatch.png')),),
                const Center(child:
                Padding(
                  padding: EdgeInsets.only(top: 35.0,bottom: 31.0),
                  child: Text('Apple Watch',style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w600,fontFamily: 'Raleway'),),),
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 98.0,bottom: 31.0),
                    child: Center(child: Text("\$ 359",style: TextStyle(color: Color(0xff5956E9),fontSize: 17.0),),)

                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
