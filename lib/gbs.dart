import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class Gbs_nav extends StatefulWidget {
  Gbs_nav({Key? key}) : super(key: key);

  @override
  State<Gbs_nav> createState() => _Gbs_navState();
}

class _Gbs_navState extends State<Gbs_nav> {
  String x = "";
  var cl;
  Future getPostion() async {
    bool services;
    LocationPermission per;
    services = await Geolocator.isLocationServiceEnabled();
    if (services == false) {
      print("false");
    }
    per = await Geolocator.checkPermission();

    if (per == Geolocator.requestPermission()) {
      per = await Geolocator.checkPermission();
      if (per == LocationPermission.always) {
        getLatAndLong();
      }
    }
    print("+======================================");
    print(per);
    print("+======================================");
  }

  Future<Position> getLatAndLong() async {
    return await Geolocator.getCurrentPosition().then((value) => value);
  }

  @override
  void initState() {
    getPostion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            child: Text("get location"),
            onPressed: () async {
              cl = await getLatAndLong();
              print(cl.latitude);
              print(cl.longitude);

              List<Placemark> placemarks =
                  await placemarkFromCoordinates(cl.latitude, cl.longitude);
              print(placemarks[0].country);
            },
          ),
          ElevatedButton(
            child: Text("show long destance"),
            onPressed: () async {
              cl = await getLatAndLong();
              print(cl.latitude);
              print(cl.longitude);
              var distanceBetween = await Geolocator.distanceBetween(
                  24.327077, 39.631053, 27.547242, 41.741836);
              var distanceKm = distanceBetween / 1000;
              print(distanceKm);
            },
          )
        ],
      ),
    );
  }
}
