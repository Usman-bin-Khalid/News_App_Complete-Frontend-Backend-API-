import 'package:flutter/material.dart';
import 'package:news_app/Components/LoadingContainer.dart';

class Demopage extends StatelessWidget {
  const Demopage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.only(right: 10),
              width: 280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              child: Column(
                children: [
                  Loadingcontainer(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                  ),

                  const SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Loadingcontainer(
                          width: MediaQuery.of(context).size.width / 4,
                          height: 10,
                        ),
                      ),
                      Flexible(
                        child: Loadingcontainer(
                          width: MediaQuery.of(context).size.width / 5,
                          height: 10,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  Row(
                    children: [
                      Flexible(
                        child: Loadingcontainer(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 20,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  Row(
                    children: [
                      Flexible(
                        child: Loadingcontainer(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 20,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  Row(
                    children: [
                      Flexible(
                        child: Loadingcontainer(
                          width: 30, // diameter of circle
                          height: 30,
                        ),
                      ),
                      const SizedBox(width: 10),

                      Flexible(
                        child: Loadingcontainer(
                          width: MediaQuery.of(context).size.width / 3,
                          height: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
