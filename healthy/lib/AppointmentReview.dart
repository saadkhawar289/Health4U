import 'package:flutter/material.dart';

class AppointmentReview extends StatefulWidget {
  final String name,picture;

  AppointmentReview({required this.name,required this.picture});
  @override
  _State createState() => _State();
}

class _State extends State<AppointmentReview> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SafeArea(
            child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.7,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Row(
          children: [
            Text(
              "Appointment Review",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                child: ListTile(
                  leading: Image.asset(widget.picture),
                  title: Row(
                    children: [
                      Column(
                        children: [
                          Text(widget.name),
                          Text("Fri june 01.2021"),
                          Text("15:00-15:15")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width * 3,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Row(
                          children: [
                            Text("Notes",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet ,consectetur\n"
                        "adlipiscing elit. Suspendisse id viverra ultrices\n"
                        "hac nibh nulla imperdiet facilisi. sit\n"
                        "porta nunc arcu suspendisse volutpat iaculis\n"
                        "lectus aenean sagittis",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: 65,
                width: MediaQuery.of(context).size.width * 3,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Diet Change",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text("None"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: 65,
                width: MediaQuery.of(context).size.width * 3,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "New Medicine",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text("None"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    )));
  }
}
