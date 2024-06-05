## Features

[![Flutter Package](https://img.shields.io/pub/v/grouped_timeline.svg)](https://pub.dev/packages/grouped_timeline)
![](https://github.com/hnvn/flutter_shimmer/workflows/unit%20test/badge.svg)
[![Pub Points](https://img.shields.io/pub/points/grouped_timeline)](https://pub.dev/packages/grouped_timeline/score)
[![Popularity](https://img.shields.io/pub/popularity/grouped_timeline)](https://pub.dev/packages/grouped_timeline/score)

A Flutter package grouped_timeline provide interactive timeline widget for your Flutter project

<img src="https://github.com/WhiteOrange/grouped_timeline/assets/162456479/40b3dd04-fdbd-46db-a641-3431effe86d7" alt="device-2024-03-07-164828" height="500">

## Getting started

grouped_timeline is basically an improved timeline package so you can just use as an TimeLine widget directly.

## Usage

```flutter
    TimeLine(
        /// we are providing a list for timeline information
        timeLineInfo: [
          TimeLineInfo(
            date: "12 May",
            title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sollicitudin eu orci at bibendum. Etiam semper volutpat magna, a vehicula",
            images: ["https://source.unsplash.com/random/200x200?sig=1", "https://source.unsplash.com/random/200x200?sig=2"],
          ),
          TimeLineInfo(
            date: "14 May",
            title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sollicitudin eu orci at bibendum. Etiam semper volutpat magna, a vehicula",
            images: ["https://source.unsplash.com/random/200x200?sig=3", "https://source.unsplash.com/random/200x200?sig=4"],
          ),
          TimeLineInfo(
            date: "12 May",
            title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sollicitudin eu orci at bibendum. Etiam semper volutpat magna, a vehicula",
            images: ["https://source.unsplash.com/random/200x200?sig=5", "https://source.unsplash.com/random/200x200?sig=6"],
          ),
        ],
      )
```
