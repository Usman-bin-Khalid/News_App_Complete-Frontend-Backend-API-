import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class NewsDetailsPage extends StatelessWidget {
  const NewsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        child: Row(
                          children: [Icon(Icons.arrow_back_ios), Text("Back")],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  height: 330,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://images.news18.com/ibnlive/uploads/2025/08/World-News-AI-Blog-2025-07-71d087050940689d8621058405992e8c.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "World News Live Updates: Turkey Warns Israel and Kurdish Fighters",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "2 Days ago * Tech",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    CircleAvatar(radius: 15, backgroundColor: Colors.red),
                    SizedBox(width: 10),
                    Text(
                      "Usman Khalid",
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).colorScheme.secondaryContainer,
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        '''Which types of work are subject to copyright? Copyright ownership gives the owner the exclusive right to use the work, with some exceptions. When a person creates an original work, fixed in a tangible medium, he or she automatically owns copyright to the work. Many types of works are eligible for copyright protection.''',
                        style: TextStyle(
                          fontSize: 18,
                          
                          color: Theme.of(

                            context,
                          ).colorScheme.secondaryContainer,
                          
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
