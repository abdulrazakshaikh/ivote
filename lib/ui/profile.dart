import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_vote/ui/dashboard.dart';
import 'package:i_vote/ui/searchVoters.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}


class _ProfileState extends State<Profile> with TickerProviderStateMixin{

  int _currentIndex = 2;
  void handleClick(String value) {
    switch (value) {
      case 'Logout':
        break;
      case 'Language':
        break;
      case 'Gender Report':
        break;
      case 'Voter Status':
        break;
      case 'Part No. Search':
        break;
      case 'Building Wise Search':
        break;
      
    }
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: 2,
      iconSize: 20,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Theme.of(context).colorScheme.primary,
      selectedLabelStyle: Theme.of(context).textTheme.bodyText2!.merge(TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2)),
      unselectedLabelStyle: Theme.of(context).textTheme.bodyText2!.merge(TextStyle(fontWeight: FontWeight.w600, letterSpacing: 1.2)),
      onTap: (int _currentIndex){
        Navigator.push(context, 
          MaterialPageRoute(
            builder: (BuildContext context) => 
            _currentIndex == 0 ?
            Dashboard()
            :
            _currentIndex == 1 ?
            SearchVoters()
            :
            _currentIndex == 2 ?
            Profile()
            :
            Container(),
            
          )
        );
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.space_dashboard),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_rounded),
          label: 'Search Voters',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: 'Profile',
        ),
      ],
    ),
    appBar: AppBar(
      automaticallyImplyLeading : false,
      elevation: 1,
      title: Text('Profile'),
      titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
      actions: [
          Container(
            width: 42, height: 42,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(10),
            //   color: Theme.of(context).primaryColor,
            // ),
            margin: EdgeInsets.all(5),
            child: PopupMenuButton(
              onSelected: handleClick,
              itemBuilder: (BuildContext context) {
                return {
                  'Logout',
                  'Language',
                  'Gender Report',
                  'Voter Status',
                  'Part No. Search',
                  'Building Wise Search'
                }.map((choice) {
                  return PopupMenuItem(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ),
        ],
    ),
    body: Padding(
      padding: EdgeInsets.all(15),
      child: Text('Profile'),
    ),
    );
  }
}
