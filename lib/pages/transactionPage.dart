import 'package:finance_mobile_application_design/widgets/customGraphic.dart';
import 'package:finance_mobile_application_design/widgets/loginButton.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  //const TransactionPage({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            // Handle go back
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () {
              // Handle search
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Transactions',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              
              SizedBox(height: 16.0),
              Row(
        children: [
          GestureDetector(
        onTap: () {
          // Handle "All" button
        },
        child: Container(
          margin: EdgeInsets.only(right: 8.0),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
              color: Colors.blue,
              width: 2.0,
            ),
          ),
          child: Text(
            'All',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
          ),
          GestureDetector(
        onTap: () {
          // Handle "Income" button
        },
        child: Container(
          margin: EdgeInsets.only(right: 8.0),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Text(
            'Income',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
          ),
          GestureDetector(
        onTap: () {
          // Handle "Expense" button
        },
        child: Container(
          margin: EdgeInsets.only(right: 8.0),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Text(
            'Expense',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
          ),
        ],
      ),
      
      SizedBox(height: 16.0),
      
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Card(
                shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
        ),
                child: ListTile(
                  leading: Icon(Icons.mark_email_read_sharp),
                  title: Text('Payment'),
                  subtitle: Text('Payment from Andrea'),
                  trailing: Text(
                    '\$30',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 120,),
      
              CustomGraphicWidget(),
      
              SizedBox(height: 180,),
      
              LoginButton(text: "See Details", onPressed: (){})
              
            ],
          ),
        ),
      ),
    );
  }
}
