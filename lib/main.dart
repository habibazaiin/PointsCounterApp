import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  @override
  Widget build(BuildContext context) {
    int TeamApoints = 0;
    int TeamBPoints = 0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Points Counter'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Column(
          children: [
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Team A', style: TextStyle(fontSize: 32)),
                    Text('$TeamApoints', style: TextStyle(fontSize: 150)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        minimumSize: Size(160, 60),
                      ),
                      onPressed: () {
                        setState(() {
                          TeamApoints++;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        minimumSize: Size(160, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          TeamApoints += 2;
                        });
                      },
                      child: Text(
                        'Add 2 Points',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        minimumSize: Size(160, 60),
                      ),
                      onPressed: () {
                        setState(() {
                          TeamApoints += 3;
                        });
                      },
                      child: Text(
                        'Add 3 Points',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 450,
                  child: VerticalDivider(color: Colors.grey, thickness: 1),
                ),
                Column(
                  children: [
                    Text('Team B', style: TextStyle(fontSize: 32)),
                    Text('$TeamBPoints', style: TextStyle(fontSize: 150)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        minimumSize: Size(160, 60),
                      ),
                      onPressed: () {
                        setState(() {
                          TeamBPoints++;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        minimumSize: Size(160, 60),
                      ),
                      onPressed: () {
                        setState(() {
                          TeamBPoints += 2;
                        });
                      },
                      child: Text(
                        'Add 2 points',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        minimumSize: Size(160, 60),
                      ),
                      onPressed: () {
                        setState(() {
                          TeamBPoints += 3;
                        });
                      },
                      child: Text(
                        'Add 3 points',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                minimumSize: Size(160, 60),
              ),
              onPressed: () {
                setState(() {
                  TeamApoints = 0;
                  TeamBPoints = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
