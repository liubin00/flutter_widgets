import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class i_Image extends StatefulWidget {
  @override
  i_ImageState createState() {
    return i_ImageState();
  }
}

class i_ImageState extends State<i_Image> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'img/1.jpg',
                    width: double.infinity,
                    height: 150,
                    repeat: ImageRepeat.repeatX,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Image.asset(
                            'img/1.jpg',
                            height: 150,
                            matchTextDirection: true,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Container(
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Image.asset(
                            'img/1.jpg',
                            height: 150,
                            matchTextDirection: false,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Image.asset(
                    'img/1.jpg',
                    frameBuilder: (BuildContext context, Widget child,
                        int frame, bool wasSynchronouslyLoaded) {
                      if (wasSynchronouslyLoaded) {
                        return child;
                      }
                      return AnimatedOpacity(
                        child: child,
                        opacity: frame == null ? 0 : 1,
                        duration: const Duration(seconds: 3),
                        curve: Curves.easeOut,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Image.network(
                    'https://avatar.csdnimg.cn/5/8/0/1_weixin_46005137_1594283704.jpg',
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes
                              : null,
                        ),
                      );
                    },
                  ),
                ),
//                Container(
//                  width: 250,
//                  height: 300,
//                  decoration: BoxDecoration(
//                    image: DecorationImage(
//                        centerSlice: Rect.fromLTWH(10, 10, 10, 10),
//                        image: AssetImage('img/zzz.jpg'),
//                        fit: BoxFit.fill),
//                  ),
//                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
