import 'package:ecommerce_app/widgets/button.dart';
import 'package:ecommerce_app/widgets/buttonmini.dart';
import 'package:ecommerce_app/widgets/carditem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SingleItem extends StatelessWidget {
  const SingleItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    return Scaffold(
        backgroundColor: const Color(0xffF6F6F9),
        body: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_back)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border_outlined))
                    ],
                  ),
                )),
            Container(
              child: CarouselWithIndicatorDemo(),
              width: 300,
              height: 280,
            ),
            Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                height: MediaQuery.of(context).size.height * 0.51,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            '2020 Apple IPad Air 10.9"',
                            style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600),
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: const Padding(
                            padding: EdgeInsets.only(left:39,top: 12,bottom: 10),
                            child: Text(
                              'Colors',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,
                                  fontFamily: 'Raleway'),
                              textAlign: TextAlign.left,
                            )
                          )
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const <Widget>[
                          ButtonMini(),
                          ButtonMini(
                            color: 0xffC9A19C,
                            text: 'Rose Gold',
                          ),
                          ButtonMini(
                            color: 0xffA1C89B,
                            text: 'Green',
                          )
                        ],
                      ),
                           Padding(
                          padding: const EdgeInsets.only(top:20,left:45),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: const Text('Get Apple TV+ free for a year',
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17),
                              )
                            )

                          ),
                        const Padding(
                        padding: EdgeInsets.only(top:5,left:45),
                          child: Text(
                            'Available when you purchase any new iPhone, iPad, iPod Touch, Mac or Apple TV, £4.99/month after free trial.',
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: Colors.black38
                            ),
                          )
                        )
                       ,
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.only(left:45),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(primary: Colors.white,padding: EdgeInsets.all(0.0),elevation: 0.0),
                            onPressed: (){}, child: const Text('Full description ->',
                          style: TextStyle(color: Color(0xff5956E9),fontSize: 15,fontWeight: FontWeight.w700,fontFamily: 'Raleway'),)
                        )
                      ),
                      Padding(padding: const EdgeInsets.only(left:53,right: 50,bottom: 5),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              Text('Total',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,fontFamily: 'Raleway'),),
                              Text('\$579',style: TextStyle(color: Color(0xff5956E9),fontSize: 22,fontWeight: FontWeight.w700,fontFamily: 'Raleway'),),
                            ],
                          )
                      ),
                      Button(
                        text: 'Add to basket',
                        color: Color(0xff5956E9),
                        width: 314,
                        onClick: (){},
                        height: 60,
                        fontSize: 20,
                      )


                    ],
                  ),
                )
            ),
          ],
        ));
  }
}

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Expanded(
          child: CarouselSlider(
            items: const [
              Image(
                image: AssetImage('assets/images/ipad.png'),
              ),
              Image(
                image: AssetImage('assets/images/ipad.png'),
              ),
              Image(
                image: AssetImage('assets/images/ipad.png'),
              )
            ],
            carouselController: _controller,
            options: CarouselOptions(
                height: 240,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/ipad.png'),
            ),
            const Image(
              image: AssetImage('assets/images/ipad.png'),
            ),
            const Image(
              image: AssetImage('assets/images/ipad.png'),
            )
          ].asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : const Color(0xff5956E9))
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
