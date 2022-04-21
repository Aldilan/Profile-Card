import 'package:flutter/material.dart';
import 'seemore.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/spacebg.jpg'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Stack(
            overflow: Overflow.visible,
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.shortestSide,
                padding: EdgeInsets.all(20),
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 100.0,
                          backgroundImage: AssetImage('images/pxguy.jpg'),
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            ColorizeAnimatedText('Aldilan',
                                textStyle: TextStyle(
                                  fontFamily: 'Retro',
                                  fontSize: 40,
                                ),
                                colors: [Colors.purple, Colors.blue]),
                            ColorizeAnimatedText('Alilan',
                                textStyle: TextStyle(
                                  fontFamily: 'Retro',
                                  fontSize: 40,
                                ),
                                colors: [Colors.purple, Colors.blue]),
                            ColorizeAnimatedText('Aldilan',
                                textStyle: TextStyle(
                                  fontFamily: 'Retro',
                                  fontSize: 40,
                                ),
                                colors: [Colors.purple, Colors.blue]),
                            ColorizeAnimatedText('Aldila',
                                textStyle: TextStyle(
                                  fontFamily: 'Retro',
                                  fontSize: 40,
                                ),
                                colors: [Colors.purple, Colors.blue]),
                          ],
                          isRepeatingAnimation: true,
                        ),
                        Tooltip(
                          message: 'See more about Aldilan',
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SeeMore(),
                                    ));
                              },
                              child: Text(
                                'See More..',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontFamily: 'Minecraftia'),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
