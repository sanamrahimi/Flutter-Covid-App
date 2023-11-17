import 'package:covid_app/screens/world_states.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String image;
  final String name;
  final int totalCases,
      totalDeaths,
      totalRecovered,
      active,
      critical,
      todayRecovered,
      test;

  const DetailScreen({
    required this.image,
    required this.name,
    required this.totalCases,
    required this.totalDeaths,
    required this.totalRecovered,
    required this.active,
    required this.critical,
    required this.todayRecovered,
    required this.test,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Card(
              child: Column(
                children: [
                  // SizedBox(height: MediaQuery.of(context).size.height * .86),
                  ReusableRow(
                      title: 'Cases', value: widget.totalCases.toString()),
                  ReusableRow(
                      title: 'Cases', value: widget.totalCases.toString()),
                  ReusableRow(
                      title: 'Recovered',
                      value: widget.todayRecovered.toString()),
                  ReusableRow(
                      title: 'Death', value: widget.totalDeaths.toString()),
                  ReusableRow(
                      title: 'Critical', value: widget.critical.toString()),
                  ReusableRow(
                      title: 'Today Recovered',
                      value: widget.todayRecovered.toString()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
