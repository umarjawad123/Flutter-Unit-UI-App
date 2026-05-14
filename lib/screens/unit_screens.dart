import 'package:flutter/material.dart';
import 'package:unit_app/screens/unit_details_screen.dart';
import 'package:unit_app/screens/home_screen.dart';

// ignore: must_be_immutable
class UnitScreens extends StatelessWidget {
   UnitScreens({super.key});

  Map unitDetails = {
      'Unit 1': 'Introduction to English',
      'Unit 2': 'Jobs and Schools',
      'Unit 3': 'Food and Drinks',
      'Unit 4': 'Places and Directions',
      'Unit 5': 'LifeStyles',
      'Unit 6': 'Health and Fitness',
      'Unit 7': 'Travel and Transportation',
      'Unit 8': 'Entertainment and Hobbies',
      'Unit 9': 'Technology and Communication',
      'Unit 10': 'Conclusion and Review',
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/landscape image book.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Color.fromARGB(137, 37, 9, 52),
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10.0, 30.0, 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyHomePage()),
                        );
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        CircleAvatar(radius: 20, backgroundColor: Colors.white),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 45.0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'ENGLISH\n',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          TextSpan(
                            text: 'MAIN UNITS',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.purple[50],
                      elevation: 3,
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  UnitDetailsScreens()),
                          );
                        },
                        leading: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 93, 0, 255),
                          child: Text('${index + 1}', style: TextStyle(color: Colors.white),),
                        ),
                        title: Text('Unit ${index + 1}', style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text(unitDetails['Unit ${index + 1}'] ?? 'No details available'),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
