import 'package:flutter/material.dart';

class WalletHome extends StatefulWidget {
  @override
  _WalletHomeState createState() => _WalletHomeState();
}

class _WalletHomeState extends State<WalletHome> {
  double _height, _width;
  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        height: _height,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              // Background images
              children: <Widget>[
                Material(
                  elevation: 5.0,
                  child: Container(
                    height: _height * 0.45,
                    width: _width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage('assets/images/bg1.jpg'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.2),
                            BlendMode.hardLight,
                          )),
                    ),
                  ),
                ),
                // Body Design
                Container(
                  margin: EdgeInsets.only(
                    top: _height * 0.1,
                    left: _width * 0.03,
                    right: _width * 0.05,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // First Main Child
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 30,
                            ),
                            Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                      // Second Main Child
                      Container(
                        margin: EdgeInsets.only(top: _height * 0.04),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Wallet',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 36,
                            )
                          ],
                        ),
                      ),
                      // Third Main Child
                      Container(
                        margin: EdgeInsets.only(top: _height * 0.1),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              // First Child Card Inside row
                              Container(
                                height: _height * 0.23,
                                width: _width * 0.9,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: _height * 0.03,
                                          left: _width * 0.04,
                                          right: _width * 0.04,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: Text(
                                                'Card No.',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 30,
                                              width: 60,
                                              child: Image.asset(
                                                'assets/images/visa.png',
                                                scale: 20.0,
                                                color: Colors.white,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.pinkAccent,
                                                shape: BoxShape.rectangle,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: _height * 0.01,
                                      ),
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            _star('****'),
                                            _star('****'),
                                            _star('****'),
                                            _star('9988'),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: _height * 0.01,
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: _width * 0.04,
                                              ),
                                              child: Text(
                                                'Expires',
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(
                                                left: _width * 0.02,
                                              ),
                                              child: Text(
                                                '06/23',
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 28,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // Second Child Card Inside row
                              Container(
                                height: _height * 0.23,
                                width: _width * 0.9,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Fourth Main Child
                      Container(
                        margin: EdgeInsets.only(
                          top: _height * 0.02,
                          left: _width * 0.01,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Send Money',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'varela',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              child: Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.grey,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Fifth Main Child
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          top: _height * 0.01,
                          left: _width * 0.02,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: _height * 0.1,
                                width: _width * 0.2,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: _height * 0.04,
                                      width: _width * 0.09,
                                      margin: EdgeInsets.only(
                                        top: _height * 0.01,
                                        bottom: _height * 0.001,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.only(top: _height * 0.01),
                                      child: Text(
                                        'Add Person',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'varela',
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: _width * 0.04,
                              ),
                              _users(
                                'assets/images/users/anna.jpeg',
                                'Anna',
                                'varela',
                              ),
                              SizedBox(
                                width: _width * 0.04,
                              ),
                              _users(
                                'assets/images/users/gillian.jpeg',
                                'Gillian',
                                'varela',
                              ),
                              SizedBox(
                                width: _width * 0.04,
                              ),
                              _users('assets/images/users/judith.jpeg',
                                  'Judith', 'varela'),
                              SizedBox(
                                width: _width * 0.04,
                              ),
                              _users(
                                'assets/images/users/judith.jpeg',
                                'Judith',
                                'varela',
                              ),
                              SizedBox(
                                width: _width * 0.04,
                              ),
                              _users(
                                'assets/images/users/judith.jpeg',
                                'Judith',
                                'varela',
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _height * 0.02,
                      ),
                      // Sixth Main Child
                      Container(
                        margin: EdgeInsets.only(
                          left: _width * 0.02,
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Text(
                                'All',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                            Container(
                              child: Text(
                                'Received',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: _width * 0.04,
                            ),
                            Container(
                              child: Text(
                                'Sent',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.grey,
                                  size: 30,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: _height * 0.02,
                      ),
                      // Seventh Main Child
                      Container(
                        margin: EdgeInsets.only(
                          left: _width * 0.02,
                        ),
                        child: Text(
                          '23 july 2019',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: _height * 0.02,
                      ),
                      // Eigth Main Child
                      Container(
                        margin: EdgeInsets.only(
                          left: _width * 0.02,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Card(
                                      child: Container(
                                        height: _height * 0.06,
                                        width: _width * 0.12,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _star(String value) => Container(
        padding: EdgeInsets.only(
          left: _width * 0.04,
        ),
        child: Text(
          value,
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  Widget _users(String _imagePath, String _text, String _fontFamily) =>
      Container(
        height: _height * 0.1,
        width: _width * 0.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: _height * 0.044,
              width: _width * 0.094,
              margin: EdgeInsets.only(
                top: _height * 0.01,
                bottom: _height * 0.001,
              ),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(_imagePath),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: _height * 0.01),
              child: Text(
                _text,
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: _fontFamily,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      );
}
