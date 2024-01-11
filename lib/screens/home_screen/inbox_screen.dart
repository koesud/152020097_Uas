import 'package:flutter/material.dart';
import 'package:pemmob_app/utils/constants.dart';

class InboxScreen extends StatelessWidget {
  InboxScreen({super.key});

  final titles = [
    "Display",
    "Themes",
    "Screens",
    "Settings",
    "Privacy",
    "Location",
    "Advance Features",
    "New York",
    "Times",
    "Wallpaper",
    "Apps",
    "Accessibility",
    "Team Support",
    "User Manual",
  ];
  final subtitles = [
    "This is Display",
    "This is Themes",
    "This is Screens",
    "This is Settings",
    "This is Privacy",
    "This is Location",
    "This is Advance Features",
    "This is New York",
    "This is Times",
    "This is Wallpaper",
    "This is Apps",
    "This is Accessibility",
    "This is Team Support",
    "This is User Manual",
  ];
  final icons = [
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.access_time,
    Icons.access_time,
    Icons.access_time,
    Icons.access_time,
    Icons.access_time,
    Icons.access_time,
    Icons.access_time,
    Icons.access_time,
    Icons.access_time,
    Icons.access_time,
    Icons.access_time,
    Icons.access_time,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kSubBackgroundColor,
          elevation: 0,
          title: const Center(
            child: Text(
              'List View Menu',
              style: TextStyle(
                  color: kTextColorBlack,
                  fontFamily: 'Work Sans',
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: titles.length,
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('${titles[index]} pressed!'),
                        ));
                      },
                      title: Text(titles[index]),
                      subtitle: Text(subtitles[index]),
                      leading: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                      trailing: Icon(icons[index])));
            }));
  }
}
