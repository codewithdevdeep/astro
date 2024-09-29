import 'package:blog/blogpost.dart';
import 'package:blog/deatailpage.dart';
import 'package:blog/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
 
    
      home: NewsScreen(),
    );
  }
}




class NewsCard extends StatelessWidget {
  final NewsItem newsItem;

  const NewsCard({Key? key, required this.newsItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  newsItem.title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: newsItem.tags.map((tag) => Chip(
                    label: Text(tag, style: TextStyle(color: Colors.white)),
                    backgroundColor: Color.fromARGB(188, 19, 19, 19),
                  )).toList(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  child: Image.network(
                    newsItem.imageUrl,
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.remove_red_eye, color: Colors.white, size: 16),
                      SizedBox(width: 4),
                      Text(
                        '${newsItem.views}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.person, size: 16),
                    SizedBox(width: 4),
                    Text(newsItem.author),
                    Spacer(),
                    Icon(Icons.calendar_today, size: 16),
                    SizedBox(width: 4),
                    Text(newsItem.publishDate),
                  ],
                ),
                SizedBox(height: 8),
                Text(newsItem.description),
                SizedBox(height: 16),
                ElevatedButton(
                  child: Text('READ MORE', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 2, 2, 2)),
                  onPressed: () {Get.to(() => BlogDetailPage(post: newsItem.toMap()));},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}