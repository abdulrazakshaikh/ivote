import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_vote/ui/dashboard.dart';
import 'package:i_vote/ui/profile.dart';


class SearchVoters extends StatefulWidget {
  @override
  _SearchVotersState createState() => _SearchVotersState();
}


class _SearchVotersState extends State<SearchVoters> with TickerProviderStateMixin{

  int _currentIndex = 1;
  bool _showSearchbar = false;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: 1,
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
      items: const <BottomNavigationBarItem>[
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
    // appBar: AppBar(
    //   elevation: 1,
    //   title: Text('Search Voters'),
    //   titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
    //   actions: [
    //     Container(
    //       width: 42, height: 42,
    //       margin: EdgeInsets.all(5),
    //       child: IconButton(
    //         icon: Icon(Icons.search, color: Colors.white, size: 24),
    //         onPressed: () {},
    //       ),
    //     ),
    //   ],
    // ),
    body:  CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading : false,
            elevation: 1,
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: false,
            title: Text('Search Voters'),
            titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
            actions: [
              Container(
                width: 42, height: 42,
                margin: EdgeInsets.all(5),
                child: 
                
                _showSearchbar ?
                IconButton(
                  icon: Icon(Icons.search_off_rounded, color: Colors.white, size: 24),
                  onPressed: () {
                     setState(() {
                      _showSearchbar = false; // we got a new "droplet" 
                    });
                  },
                )
                :
                IconButton(
                  icon: Icon(Icons.search_rounded, color: Colors.white, size: 24),
                  onPressed: () {
                     setState(() {
                      _showSearchbar = true; // we got a new "droplet" 
                    });
                  },
                ),
              ),
            ],
            bottom:
            _showSearchbar ? 
            AppBar(
              elevation: 0,
              automaticallyImplyLeading : false,
              backgroundColor: Colors.white,
              titleSpacing: 0,
              title: Container(
                // padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5),
                          hintText: 'First Name',
                        ),
                      ),
                    ),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5),
                          hintText: 'Middle Name',
                        ),
                      ),
                    ),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5),
                          hintText: 'Last Name',
                        ),
                      ),
                    ),
                    Container(
                      width: 48, 
                      height: 48,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(4),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(4),
                          bottomRight: Radius.circular(4),
                        ),
                        color: Theme.of(context).colorScheme.primary,
                        // color: Colors.white,
                      ),
                      child: IconButton(
                        icon: Icon(Icons.search, color: Colors.white, size: 24),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            )
            :
            null,
          ),
          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                height: 400,
                child: Center(
                  child: Text(
                    'This is an awesome shopping platform',
                  ),
                ),
              ),
              Container(
                height: 1000,
                color: Colors.pink,
              ),
            ]),
          ),
        ],
      ),
    
    // Padding(
    //     padding: EdgeInsets.zero,
    //     child: Column(
    //       children: [
    //         Card(
    //           elevation: 4,
    //           child: Row(
    //             children: [
    //               Flexible(
    //                 child: TextField(
    //                   decoration: InputDecoration(
    //                     hintText: 'First Name',
    //                   ),
    //                 ),
    //               ),
    //               Flexible(
    //                 child: TextField(
    //                   decoration: InputDecoration(
    //                     hintText: 'Middle Name',
    //                   ),
    //                 ),
    //               ),
    //               Flexible(
    //                 child: TextField(
    //                   decoration: InputDecoration(
    //                     hintText: 'Last Name',
    //                   ),
    //                 ),
    //               ),

    //             ],
    //           )
              
    //         ),
    //         Text('Search Voters'),    
    //       ],
    //     )
        
    //   ),
    );
  }
}
