import 'package:flutter/material.dart';
import 'package:grouped_timeline/grouped_timeline.dart';

void main() {
  ///root widget
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      /// custom timeline widget for timeline view
      home: TimeLine(
        /// we are providing a list for timeline information
        timeLineInfo: [
          TimeLineInfo(
            date: "12 May",
            title:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sollicitudin eu orci at bibendum. Etiam semper volutpat magna, a vehicula",
            images: [
              "https://source.unsplash.com/random/200x200?sig=1",
              "https://source.unsplash.com/random/200x200?sig=2"
            ],
          ),
          TimeLineInfo(
            date: "14 May",
            title:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sollicitudin eu orci at bibendum. Etiam semper volutpat magna, a vehicula",
            images: [
              "https://source.unsplash.com/random/200x200?sig=3",
              "https://source.unsplash.com/random/200x200?sig=4"
            ],
          ),
          TimeLineInfo(
            date: "12 May",
            title:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sollicitudin eu orci at bibendum. Etiam semper volutpat magna, a vehicula",
            images: [
              "https://source.unsplash.com/random/200x200?sig=5",
              "https://source.unsplash.com/random/200x200?sig=6"
            ],
          ),
          TimeLineInfo(
            date: "24 Jan",
            title:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sollicitudin eu orci at bibendum. Etiam semper volutpat magna, a vehicula",
            images: [
              "https://source.unsplash.com/random/200x200?sig=7",
              "https://source.unsplash.com/random/200x200?sig=8"
            ],
          ),
          TimeLineInfo(
            date: "24 Jan",
            title:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sollicitudin eu orci at bibendum. Etiam semper volutpat magna, a vehicula",
            images: [
              "https://source.unsplash.com/random/200x200?sig=9",
              "https://source.unsplash.com/random/200x200?sig=10"
            ],
          ),
          TimeLineInfo(
            date: "13 May",
            title:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sollicitudin eu orci at bibendum. Etiam semper volutpat magna, a vehicula",
            images: [
              "https://source.unsplash.com/random/200x200?sig=11",
              "https://source.unsplash.com/random/200x200?sig=12"
            ],
          ),
          TimeLineInfo(
            date: "13 May",
            title:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sollicitudin eu orci at bibendum. Etiam semper volutpat magna, a vehicula",
            images: [
              "https://source.unsplash.com/random/200x200?sig=13",
              "https://source.unsplash.com/random/200x200?sig=14"
            ],
          ),
          TimeLineInfo(
            date: "13 May",
            title:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sollicitudin eu orci at bibendum. Etiam semper volutpat magna, a vehicula",
            images: [
              "https://source.unsplash.com/random/200x200?sig=15",
              "https://source.unsplash.com/random/200x200?sig=16"
            ],
          ),
          TimeLineInfo(
            date: "14 May",
            title:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sollicitudin eu orci at bibendum. Etiam semper volutpat magna, a vehicula",
            images: [
              "https://source.unsplash.com/random/200x200?sig=17",
              "https://source.unsplash.com/random/200x200?sig=18"
            ],
          ),
          TimeLineInfo(
            date: "14 May",
            title:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sollicitudin eu orci at bibendum. Etiam semper volutpat magna, a vehicula",
            images: [
              "https://source.unsplash.com/random/200x200?sig=19",
              "https://source.unsplash.com/random/200x200?sig=20"
            ],
          ),
          TimeLineInfo(
            date: "11 Feb",
            title:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sollicitudin eu orci at bibendum. Etiam semper volutpat magna, a vehicula",
            images: [
              "https://source.unsplash.com/random/200x200?sig=21",
              "https://source.unsplash.com/random/200x200?sig=22"
            ],
          ),
          TimeLineInfo(
            date: "11 Feb",
            title:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sollicitudin eu orci at bibendum. Etiam semper volutpat magna, a vehicula",
            images: [
              "https://source.unsplash.com/random/200x200?sig=23",
              "https://source.unsplash.com/random/200x200?sig=24"
            ],
          ),
        ],
      ),
    );
  }
}
