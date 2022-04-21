import 'package:flutter/material.dart';
import 'main.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new)),
          backgroundColor: Colors.transparent, // 1
          elevation: 0, // 2
        ),
        body: Container(
          color: const Color(0xFF484175),
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: const <Widget>[
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('images/pxguy.jpg'),
                    ),
                    Divider(
                      height: 10,
                    ),
                    Text(
                      'Aldilan',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Minecraftia',
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFF1D7F),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      'About',
                      style: TextStyle(fontSize: 15, fontFamily: 'Minecraftia'),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum labore nulla error deserunt non sapiente, facere ab exercitationem velit pariatur.',
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Minecraftia',
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      'History',
                      style: TextStyle(fontSize: 15, fontFamily: 'Minecraftia'),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum labore nulla error deserunt non sapiente, facere ab exercitationem velit pariatur.',
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Minecraftia',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum labore nulla error deserunt non sapiente, facere ab exercitationem velit pariatur.',
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Minecraftia',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.zero, top: Radius.circular(10)),
                        color: Color(0xFFFF1D7F),
                      ),
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                      child: const Text(
                        'Skills',
                        style:
                            TextStyle(fontSize: 13, fontFamily: 'Minecraftia'),
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                'HTML',
                                style: TextStyle(
                                    fontSize: 13, fontFamily: 'Minecraftia'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                'CSS',
                                style: TextStyle(
                                    fontSize: 13, fontFamily: 'Minecraftia'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                'PHP',
                                style: TextStyle(
                                    fontSize: 13, fontFamily: 'Minecraftia'),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                'JS',
                                style: TextStyle(
                                    fontSize: 13, fontFamily: 'Minecraftia'),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
