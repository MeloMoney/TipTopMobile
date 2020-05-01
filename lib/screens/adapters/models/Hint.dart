import 'package:flutter/material.dart';

class Hint {

  Hint({
    this.id,
    this.icon,
    this.title,
    this.description
  });

  int id;
  IconData icon;
  String title;
  String description;

  static List<Hint> mockHintData = <Hint>[
    Hint(
      id: 0,
      icon: Icons.font_download,
      title: 'Complete profile',
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
    ),
    Hint(
      id: 1,
      icon: Icons.attach_money,
      title: 'Connect bank account',
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
    ),
    Hint(
      id: 2,
      icon: Icons.info_outline,
      title: 'Regular usage',
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
    ),
    Hint(
      id: 3,
      icon: Icons.photo_camera,
      title: 'Add profile picture',
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
    ),


  ];


}
