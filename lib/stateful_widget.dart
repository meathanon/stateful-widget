// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({Key? key}) : super(key: key);
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image.asset('images/Sunrise-on-the-Matterhorn.jpg'),
        Container(
          padding: EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text('Oeschinen Lake Campground',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(
                    'kandersteg, Switzerland',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      // color: Colors.green,
                      padding: const EdgeInsets.all(0),
                      child: IconButton(
                        padding: const EdgeInsets.all(0),
                        alignment: Alignment.centerRight,
                        icon: (_isFavorited
                            ? const Icon(
                                Icons.star,
                                size: 30,
                              )
                            : const Icon(
                                Icons.star_border,
                                size: 30,
                              )),
                        color: Colors.red[500],
                        onPressed: _toggleFavorite,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 14,
                    child: SizedBox(
                      child: Text('$_favoriteCount'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: const [
                Icon(
                  Icons.call_sharp,
                  color: Colors.lightBlue,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'CALLS',
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
            Column(
              children: const [
                Icon(
                  Icons.send_sharp,
                  color: Colors.lightBlue,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'ROUTE',
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
            Column(
              children: const [
                Icon(
                  Icons.share_sharp,
                  color: Colors.lightBlue,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'SHARE',
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Row(
              children: [
              Expanded(
                child: Container(
                  child: Text(
                      "Kandersteg is characterised by a broad spectrum of accommodation: from 4-star superior hotel to holiday apartments, camping sites through to international scout centre with dormitories there is everything. Several mountain guesthouses and huts belonging to the Swiss Alpine Club in the Lötschberg holiday region provide the basis for several-day mountain tours."),
                ),
              ),
            ],),),
      ]),
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }
}
