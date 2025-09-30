import 'package:flutter/material.dart';
import 'package:news_app/Components/LoadingContainer.dart';

class NewsTileLoading extends StatelessWidget {
  const NewsTileLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          Loadingcontainer(width: 120, height: 120),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                        width: MediaQuery.of(context).size.width / 2.3,
                        height: 15,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15),
                Loadingcontainer(
                  width: MediaQuery.of(context).size.width / 1.6,
                  height: 15,
                ),
                SizedBox(height: 15),
                Loadingcontainer(
                  width: MediaQuery.of(context).size.width / 1.8,
                  height: 15,
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Loadingcontainer(
                      width: MediaQuery.of(context).size.width / 5,
                      height: 15,
                    ),
                    Loadingcontainer(
                      width: MediaQuery.of(context).size.width / 5,
                      height: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
