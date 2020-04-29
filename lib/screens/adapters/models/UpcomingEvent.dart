import 'package:flutter/material.dart';

class UpcomingEvent {

  UpcomingEvent({
    this.id,
    this.icon,
    this.title,
    this.name,
    this.address,
  });

  int id;
  IconData icon;
  String title;
  String name;
  String address;

  static List<UpcomingEvent> paymentMockData = <UpcomingEvent>[
    UpcomingEvent(
        id: 0,
        icon: Icons.music_note,
        title: 'Classic Song Festival',
        name: "Mike Lebovski",
        address: "7719 Sunset Ave. Knoxville, 37918"
    ),
    UpcomingEvent(
        id: 1,
        icon: Icons.music_note,
        title: 'Beatbox improvization',
        name: "Linda Lebovski",
        address: "7719 Sunset Ave. Knoxville, 37918"
    ),
    UpcomingEvent(
        id: 2,
        icon: Icons.music_note,
        title: 'Guitar Hero Show',
        name: "Andew McConnagen",
        address: "7719 Sunset Ave. Knoxville, 37918"
    ),
    UpcomingEvent(
        id: 3,
        icon: Icons.music_note,
        title: 'Piano classic songs',
        name: "Julia Anderson",
        address: "7719 Sunset Ave. Knoxville, 37918"
    ),
    UpcomingEvent(
        id: 4,
        icon: Icons.music_note,
        title: 'Bass Performance',
        name: "Alex Nikifon",
        address: "7719 Sunset Ave. Knoxville, 37918"
    ),
    UpcomingEvent(
        id: 5,
        icon: Icons.music_note,
        title: 'Classic Song Festival',
        name: "Mike Lebovski",
        address: "7719 Sunset Ave. Knoxville, 37918"
    ),
    UpcomingEvent(
        id: 6,
        icon: Icons.music_note,
        title: 'Classic Song Festival',
        name: "Mike Lebovski",
        address: "7719 Sunset Ave. Knoxville, 37918"
    ),
    UpcomingEvent(
        id: 7,
        icon: Icons.music_note,
        title: 'Beatbox improvization',
        name: "Linda Lebovski",
        address: "7719 Sunset Ave. Knoxville, 37918"
    ),
    UpcomingEvent(
        id: 8,
        icon: Icons.music_note,
        title: 'Guitar Hero Show',
        name: "Andew McConnagen",
        address: "7719 Sunset Ave. Knoxville, 37918"
    ),
    UpcomingEvent(
        id: 9,
        icon: Icons.music_note,
        title: 'Piano classic songs',
        name: "Julia Anderson",
        address: "7719 Sunset Ave. Knoxville, 37918"
    ),
    UpcomingEvent(
        id: 10,
        icon: Icons.music_note,
        title: 'Bass Performance',
        name: "Alex Nikifon",
        address: "7719 Sunset Ave. Knoxville, 37918"
    ),
    UpcomingEvent(
        id: 11,
        icon: Icons.music_note,
        title: 'Classic Song Festival',
        name: "Mike Lebovski",
        address: "7719 Sunset Ave. Knoxville, 37918"
    ),
  ];


}
