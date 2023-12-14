import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search...',
                              border: InputBorder.none,
                            ),
                            onChanged: (value) {
                              // Handle search logic here
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shuffle), // Change the icon to your preferred icon
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // Add other widgets here if needed
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional.bottomEnd,
                          child: Container(
                            width: 360,
                            height: 270,
                            // color: Colors.redAccent,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    35.0), // Adjust the value for circular border radius
                              ),
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(left: 58.0),
                                          child: Text(
                                            'John Doe',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        TextButton.icon(
                                          // <-- TextButton
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.add,
                                            size: 24.0,
                                          ),
                                          label: Text('INVITE'),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        // Icon(Icons.school),
                                        SizedBox(width: 8),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(left: 48.0),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Ballia | Student',
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              Text(
                                                'Within 1.4 KM',
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              SizedBox(height: 12),
                                              Container(
                                                height: 14,
                                                width: 150,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(4),
                                                  color: Colors.grey[
                                                  300], // Grey color for the bar
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor:
                                                  0.5, // Change this value (0.0 to 1.0) to adjust the fill amount
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          4),
                                                      color: Colors.grey[
                                                      600], // Grey color for the filled portion
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 16),
                                    Text(
                                      'Coffee | Business | Friendship',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),

                                    Text(
                                      'Hi community! Iam open to new connections',
                                      style: TextStyle(fontSize: 16),
                                    ),

                                    // Text(
                                    //   'Some additional text here',
                                    //   style: TextStyle(fontSize: 16),
                                    // ),
                                    //
                                    // Text(
                                    //   'Some additional text here',
                                    //   style: TextStyle(fontSize: 16),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 28.0, left: 8),
                          child: Container(
                            width: 80,
                            height: 80,
                            color: Colors.grey,
                            child: Icon(Icons.person),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional.bottomEnd,
                          child: Container(
                            width: 360,
                            height: 270,
                            // color: Colors.redAccent,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    35.0), // Adjust the value for circular border radius
                              ),
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(left: 58.0),
                                          child: Text(
                                            'John Doe',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        TextButton.icon(
                                          // <-- TextButton
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.add,
                                            size: 24.0,
                                          ),
                                          label: Text('INVITE'),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        // Icon(Icons.school),
                                        SizedBox(width: 8),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(left: 48.0),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Ballia | Student',
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              Text(
                                                'Within 1.4 KM',
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              SizedBox(height: 12),
                                              Container(
                                                height: 14,
                                                width: 150,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(4),
                                                  color: Colors.grey[
                                                  300], // Grey color for the bar
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor:
                                                  0.5, // Change this value (0.0 to 1.0) to adjust the fill amount
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          4),
                                                      color: Colors.grey[
                                                      600], // Grey color for the filled portion
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 16),
                                    Text(
                                      'Coffee | Business | Friendship',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),

                                    Text(
                                      'Hi community! Iam open to new connections',
                                      style: TextStyle(fontSize: 16),
                                    ),

                                    // Text(
                                    //   'Some additional text here',
                                    //   style: TextStyle(fontSize: 16),
                                    // ),
                                    //
                                    // Text(
                                    //   'Some additional text here',
                                    //   style: TextStyle(fontSize: 16),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 28.0, left: 8),
                          child: Container(
                            width: 80,
                            height: 80,
                            color: Colors.grey,
                            child: Icon(Icons.person),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional.bottomEnd,
                          child: Container(
                            width: 360,
                            height: 270,
                            // color: Colors.redAccent,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    35.0), // Adjust the value for circular border radius
                              ),
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(left: 58.0),
                                          child: Text(
                                            'John Doe',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        TextButton.icon(
                                          // <-- TextButton
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.add,
                                            size: 24.0,
                                          ),
                                          label: Text('INVITE'),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        // Icon(Icons.school),
                                        SizedBox(width: 8),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(left: 48.0),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Ballia | Student',
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              Text(
                                                'Within 1.4 KM',
                                                style: TextStyle(fontSize: 16),
                                              ),
                                              SizedBox(height: 12),
                                              Container(
                                                height: 14,
                                                width: 150,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(4),
                                                  color: Colors.grey[
                                                  300], // Grey color for the bar
                                                ),
                                                child: FractionallySizedBox(
                                                  alignment: Alignment.centerLeft,
                                                  widthFactor:
                                                  0.5, // Change this value (0.0 to 1.0) to adjust the fill amount
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          4),
                                                      color: Colors.grey[
                                                      600], // Grey color for the filled portion
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 16),
                                    Text(
                                      'Coffee | Business | Friendship',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),

                                    Text(
                                      'Hi community! Iam open to new connections',
                                      style: TextStyle(fontSize: 16),
                                    ),

                                    // Text(
                                    //   'Some additional text here',
                                    //   style: TextStyle(fontSize: 16),
                                    // ),
                                    //
                                    // Text(
                                    //   'Some additional text here',
                                    //   style: TextStyle(fontSize: 16),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 28.0, left: 8),
                          child: Container(
                            width: 80,
                            height: 80,
                            color: Colors.grey,
                            child: Icon(Icons.person),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



