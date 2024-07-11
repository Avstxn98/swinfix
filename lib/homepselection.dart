import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'buildpc.dart';
import 'auth.dart';

// ignore: slash_for_doc_comments
/**}
*/
class Article {
  String title;

  String urlToImage;
  DateTime publshedAt;
  String content;

  Article( 
    this.title,
    this.publshedAt,
    this.urlToImage,
    this.content
  );
}




class News {
  add(x,y,z,a){
  newslist.add(new Article(x,y,z,a)); 
}
  List<Article> newslist = [];
  Future<void> fetchAlbum() async {
    String key = 'aeb09b07ebe64d2e9793587a3c0be9c3';
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=' +
            key));
    var jsonData = jsonDecode(response.body);
    if (jsonData["status"] == 'ok') {
      for (Map i in jsonData["articles"]){
                add(i["title"].toString(),DateTime.parse(i["publishedAt"]), i['urlToImage'].toString(),i["content"].toString());
      } CircularProgressIndicator();
        }
      
     else {
      throw Exception('Failed to load news');
    }
  }
}

class Newslist extends StatefulWidget {
  @override
  _NewslistState createState() => _NewslistState();
}

class _NewslistState extends State<Newslist> {
 
  var newsli;
  bool _loading;
  
  void fetchAlbum() async {
    News news = News();
    await news.fetchAlbum();
    newsli = news.newslist;
    setState(() {
      _loading = false;
    });
  }
@override
  void initState() {
    
    _loading = true;
    super.initState();
    fetchAlbum();
  }
  // NewsList({Key key, this.newslist}): super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.deepPurpleAccent[700],
          title: Text(
            'Hello $name',
            style: TextStyle(color: Colors.black),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))),
      body:  _loading ? Center(
        child: CircularProgressIndicator(),
      ) : CarouselSlider.builder(
        itemCount: newsli.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return 
               Expanded(child:Column(children:<Widget> [Container(height: 10,),Container(
            decoration: BoxDecoration(color: Colors.red,
              borderRadius: BorderRadius.circular(45),
            ),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: ClipRRect(borderRadius: BorderRadius.circular(25),child: Image(fit: BoxFit.fill,image: NetworkImage(newsli[index].urlToImage)) ,),
                
                
              
            ),Container(child: Text(newsli[index].title, style: TextStyle(color: Colors.white),),padding: EdgeInsets.all(16),),Expanded(child:Container(child: Text(newsli[index].content, style: TextStyle(color: Colors.white),),padding: EdgeInsets.all(16),))
                              ]));
        },
        options: CarouselOptions(height: MediaQuery.of(context).size.height,
        
            autoPlay: true,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlayInterval: Duration(seconds: 15),
            autoPlayAnimationDuration: Duration(milliseconds: 900),
            autoPlayCurve: Curves.easeInOut,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal),
      ),
      backgroundColor: Colors.black,
    );
  }
}



              
             