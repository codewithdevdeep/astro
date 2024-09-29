import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BlogDetailPage extends StatelessWidget {
  final Map<String, dynamic> post;

  BlogDetailPage({required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromARGB(255, 240, 240, 240)),
          onPressed: () => Get.back(),
        ),
        title:  Text(
          "Blogs",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  post['image'],
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post['title'],
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${post['author']} • ${post['date']}',
                          style: TextStyle(color: const Color.fromARGB(255, 62, 60, 60)),
                        ),
                        Chip(
                          label: Text(
                            post['category'],
                            style: TextStyle(color: Colors.black),
                          ),
                          backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    _buildRichText(post['summary']),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
Widget _buildRichText(String description) {
    List<TextSpan> textSpans = [];
    List<String> lines = description.split('\n');

    for (String line in lines) {
      if (line.trim().isEmpty) {
        continue;
      }
      if (line.contains(':')) {
        textSpans.add(TextSpan(
          text: '\n' + line.trim() + '\n\n',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0)),
        ));
      } else {
        textSpans.add(TextSpan(
          text: line.trim() + '\n',
          style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 0, 0, 0)),
        ));
      }
    }

    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(children: textSpans),
    );
  }
}


