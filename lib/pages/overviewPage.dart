import 'package:finance_mobile_application_design/widgets/overviewCard.dart';
import 'package:flutter/material.dart';

class OverviewPage extends StatefulWidget {

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
   int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final containerHeight = screenHeight * 0.40; // Adjust the value as needed

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: containerHeight,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          // Handle drawer button press
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {
                          // Handle options button press
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage("assets/images/logo.png"),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        "John Doe",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Software Engineer",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text("\$8900"),
                                Text("Income"),
                              ],
                            ),
                            VerticalDivider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            Column(
                              children: [
                                Text("\$5500"),
                                Text("Expenses"),
                              ],
                            ),
                            VerticalDivider(
                              color: Colors.black,
                              thickness: 2,
                            ),
                            Column(
                              children: [
                                Text("\$890"),
                                Text("Loan"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      
                      Text(
                        "Overview",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(width: 8.0),

                      Icon(Icons.notifications),
                      
                    ],
                  ),
                  Text(
                    "Sept 13, 2021",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 8.0),

            OverviewCard(),
            SizedBox(height: 8.0),
            OverviewCard(),
            SizedBox(height: 8.0),
            OverviewCard(),

            


          ],
        ),
      ),
       bottomNavigationBar: Container(
  decoration: BoxDecoration(
    color: Colors.transparent,
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.vertical(
      top: Radius.circular(20),
    ),
    child: BottomNavigationBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            decoration: BoxDecoration(
              color: _selectedIndex == 0 ? Colors.blue : Colors.transparent,
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Icon(
              Icons.home,
              size: _selectedIndex == 0 ? 24.0 : 20.0,
              color: _selectedIndex == 0 ? Colors.white : null,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            decoration: BoxDecoration(
              color: _selectedIndex == 1 ? Colors.blue : Colors.transparent,
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Icon(
              Icons.credit_card,
              size: _selectedIndex == 1 ? 24.0 : 20.0,
              color: _selectedIndex == 1 ? Colors.white : null,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            decoration: BoxDecoration(
              color: _selectedIndex == 2 ? Colors.blue : Colors.transparent,
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Icon(
              Icons.add,
              size: _selectedIndex == 2 ? 24.0 : 20.0,
              color: _selectedIndex == 2 ? Colors.white : null,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: AnimatedContainer(
            
            duration: Duration(milliseconds: 200),
            decoration: BoxDecoration(
              color: _selectedIndex == 3 ? Colors.blue : Colors.transparent,
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Icon(
              Icons.attach_money,
              size: _selectedIndex == 3 ? 24.0 : 20.0,
              color: _selectedIndex == 3 ? Colors.white : null,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: AnimatedContainer(

            duration: Duration(milliseconds: 200),
            decoration: BoxDecoration(
              color: _selectedIndex == 4 ? Colors.blue : Colors.transparent,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Icon(
              Icons.person,
              size: _selectedIndex == 4 ? 24.0 : 20.0,
              color: _selectedIndex == 4 ? Colors.white : null,
            ),
          ),
          label: '',
        ),
      ],
    ),
  ),
),

    
    );
  }
}
