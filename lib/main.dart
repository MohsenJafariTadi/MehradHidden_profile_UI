import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: _getAppBar(),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                  ),
                  _getMainBody(),
                ],
              ),
            ),
          )),
    );
  }

  Widget _getMainBody() {
    return Column(
      children: [
        _getHeader(),
        SizedBox(
          height: 15,
        ),
        _getRowIcons(),
        SizedBox(
          height: 15,
        ),
        _getAlbmum(),
        SizedBox(height: 15),
        _gerResMehrad(),
      ],
    );
  }

  Widget _getHeader() {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('images/profile.jpg'),
          radius: 70,
        ),
        SizedBox(height: 15),
        Text(
          ' مهراد مستوفی راد عضو گروه زدبازی',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'مهراد مستوفی راد معرف به مهراد هیدن موزیستین و خواننده رپ و راک ',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _getRowIcons() {
    return Wrap(
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.spotify,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.instagramSquare,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.youtubeSquare,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.soundcloud,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _getAlbmum() {
    var listalbum = ['Bozorg', 'Toonel', 'Sefr', 'Toonel2', 'Zoozanagheh'];
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: [
        for (var item in listalbum)
          Card(
            child: Container(
              width: 110,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      width: 90,
                      height: 85,
                      image: AssetImage('images/$item.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('$item'),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Widget _gerResMehrad() {
    var listalbum = [
      'آلبوم بزرگ همراه سامان ویلسون',
      'آلبوم تونل  همراه کنیس وزخمی و سامان ویلسون سهراب ام جی',
      'آلبوم صفر  البوم راک',
      'آلبوم تونل ۲ همراه سامان ویلسون و سهراب ام جی وارش دارا',
      'آلبوم ذوذنقه به همراه مودی موسوی',
    ];
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        color: Colors.grey[200],
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Text(
              'لیست البوم مهراد هیدن',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            for (var item in listalbum)
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: double.infinity,
                  ),
                  Text('$item'),
                ],
              )
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      title: Text('Mehrad Hidden'),
      centerTitle: true,
      backgroundColor: Colors.black,
    );
  }
}
