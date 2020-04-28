import 'package:flutter/material.dart';

class NearEvent {

  NearEvent({
    this.id,
    this.icon,
    this.title,
  });

  int id;
  IconData icon;
  String title;

  static List<NearEvent> mockNearEventsData = <NearEvent>[
    NearEvent(
      id: 0,
      icon: Icons.music_note,
      title: 'Singers',
    ),
    NearEvent(
      id: 1,
      icon: Icons.music_note,
      title: 'Guitarists',
    ),
    NearEvent(
      id: 2,
      icon: Icons.music_note,
      title: 'Pianist',
    ),
    NearEvent(
      id: 3,
      icon: Icons.music_note,
      title: 'Drummer',
    ),
    NearEvent(
      id: 4,
      icon: Icons.music_note,
      title: 'Bassist',
    ),
    NearEvent(
      id: 5,
      icon: Icons.music_note,
      title: 'Beatboxer',
    ),

  ];


}
