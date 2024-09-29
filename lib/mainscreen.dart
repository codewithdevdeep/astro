
import 'package:blog/blogpost.dart';
import 'package:blog/main.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  final List<NewsItem> newsItems = [
    NewsItem(
        title: "4 Zodiac Signs Most Likely to Travel the World",
  tags: ["Politics", "World"],
  imageUrl: "https://images.pexels.com/photos/386025/pexels-photo-386025.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  description: "This is a description of the news item.",
  views: 1000,
  author: "John Doe",
  publishDate: "2024-07-13",

  summary:  '''Certain zodiac signs are known for their strong inclination towards travel and adventure. Here are the four zodiac signs most likely to travel the world

   1. Sagittarius:
   Sagittarius is the quintessential traveler of the zodiac. They are driven by an insatiable wanderlust and a desire for freedom. Sagittarians love to explore new cultures, foods, and experiences, often preferring solo travel to seize opportunities without delay. They thrive on the thrill of discovering new places and expanding their horizons .

2. Aquarius:
   Aquarians are known for their eccentric and unconventional nature, which extends to their travel preferences. They seek out unique and offbeat destinations that allow them to express their individuality. Their travels often focus on progressive, socially conscious locations where they can engage with humanitarian causes and innovative ideas .

3. Gemini:
   Geminis are adventurous and extroverted, finding immense joy in traveling and interacting with new people. They are spontaneous travelers who love to experience different environments, whether it's a quick weekend getaway to a nearby city or a more extended journey to immerse themselves in different cultures. Travel fuels their need for variety and stimulation .

4. Aries:
   Aries individuals are impulsive explorers who thrive on the excitement of spontaneous trips. They are always ready for a new adventure, whether it's an exhilarating outdoor activity or exploring a bustling urban landscape. Their enthusiasm for new experiences and challenges makes them frequent travelers .

These zodiac signs' natural tendencies towards curiosity, independence, and a love for new experiences make them the most likely to travel the world.'''
     
    ),
      NewsItem(
          title: "3 Zodiac Signs That Excel in Conflict Resolution'",
  tags: ["Politics", "World"],
  imageUrl: "https://images.pexels.com/photos/935789/pexels-photo-935789.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  description: "This is a description of the news item.",
  views: 1000,
  author: "vikram",
  publishDate: "2024-07-13",
  summary:  '''Certain zodiac signs are known for their strong inclination towards travel and adventure. Here are the four zodiac signs most likely to travel the world

   1. Sagittarius:
   Sagittarius is the quintessential traveler of the zodiac. They are driven by an insatiable wanderlust and a desire for freedom. Sagittarians love to explore new cultures, foods, and experiences, often preferring solo travel to seize opportunities without delay. They thrive on the thrill of discovering new places and expanding their horizons .

2. Aquarius:
   Aquarians are known for their eccentric and unconventional nature, which extends to their travel preferences. They seek out unique and offbeat destinations that allow them to express their individuality. Their travels often focus on progressive, socially conscious locations where they can engage with humanitarian causes and innovative ideas .

3. Gemini:
   Geminis are adventurous and extroverted, finding immense joy in traveling and interacting with new people. They are spontaneous travelers who love to experience different environments, whether it's a quick weekend getaway to a nearby city or a more extended journey to immerse themselves in different cultures. Travel fuels their need for variety and stimulation .

4. Aries:
   Aries individuals are impulsive explorers who thrive on the excitement of spontaneous trips. They are always ready for a new adventure, whether it's an exhilarating outdoor activity or exploring a bustling urban landscape. Their enthusiasm for new experiences and challenges makes them frequent travelers .

These zodiac signs' natural tendencies towards curiosity, independence, and a love for new experiences make them the most likely to travel the world.'''
    ),
      NewsItem(
         title: "3 Zodiac Signs That Excel in Conflict Resolution'",
  tags: ["Politics", "World"],
  imageUrl: "https://images.pexels.com/photos/935789/pexels-photo-935789.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  description: "This is a description of the news item.",
  views: 1000,
  author: "Yogesh",
  publishDate: "2024-07-13",
  summary:  '''Certain zodiac signs are known for their strong inclination towards travel and adventure. Here are the four zodiac signs most likely to travel the world

   1. Sagittarius:
   Sagittarius is the quintessential traveler of the zodiac. They are driven by an insatiable wanderlust and a desire for freedom. Sagittarians love to explore new cultures, foods, and experiences, often preferring solo travel to seize opportunities without delay. They thrive on the thrill of discovering new places and expanding their horizons .

2. Aquarius:
   Aquarians are known for their eccentric and unconventional nature, which extends to their travel preferences. They seek out unique and offbeat destinations that allow them to express their individuality. Their travels often focus on progressive, socially conscious locations where they can engage with humanitarian causes and innovative ideas .

3. Gemini:
   Geminis are adventurous and extroverted, finding immense joy in traveling and interacting with new people. They are spontaneous travelers who love to experience different environments, whether it's a quick weekend getaway to a nearby city or a more extended journey to immerse themselves in different cultures. Travel fuels their need for variety and stimulation .

4. Aries:
   Aries individuals are impulsive explorers who thrive on the excitement of spontaneous trips. They are always ready for a new adventure, whether it's an exhilarating outdoor activity or exploring a bustling urban landscape. Their enthusiasm for new experiences and challenges makes them frequent travelers .

These zodiac signs' natural tendencies towards curiosity, independence, and a love for new experiences make them the most likely to travel the world.'''
    ),
    // Add more NewsItems here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(101, 4, 4, 4),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Astroblog',style: TextStyle(fontWeight: FontWeight.bold,fontSize:24,color: Colors.white ),),
        
        actions: [
          IconButton(icon: Icon(Icons.notifications_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('ARTICLE', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold ,color: Colors.white)),
          ),
          Expanded(
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return NewsCard(newsItem: newsItems[index]);
              },
              itemCount: newsItems.length,
              layout: SwiperLayout.STACK,
              itemWidth: MediaQuery.of(context).size.width * 0.85,
              itemHeight: MediaQuery.of(context).size.height * 0.7,
            ),
          ),
        ],
      ),
     
    );
  }
}