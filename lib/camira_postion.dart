import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Camira_postion extends StatefulWidget {
  @override
  State<Camira_postion> createState() => _Camira_postionState();
}

class _Camira_postionState extends State<Camira_postion> {
  String x = "";
  var cl;
  var lat;
  var long;
  late Position cl2;

  Future getper() async {
    bool services;
    LocationPermission per;
    services = await Geolocator.isLocationServiceEnabled();
    if (services == false) {
      print("false");
    }
    per = await Geolocator.checkPermission();

    if (per == Geolocator.requestPermission()) {
      per = await Geolocator.checkPermission();
      return getper();
    }
    print("+======================================");
    print(per);
    print("+======================================");
  }

  //late CameraPosition _kGooglePlex;
  Future<void> getLatAndLong() async {
    cl2 = await Geolocator.getCurrentPosition().then((value) => value);
    lat = cl2.latitude;
    long = cl2.longitude;
    var _kGooglePlex = CameraPosition(
      target: LatLng(lat, long),
      zoom: 14.4746,
    );
  }

  @override
  void initState() {
    getper();
    getLatAndLong();
    super.initState();
  }

  //Completer<GoogleMapController> _controller = Completer();
  Completer<GoogleMapController> _controller = Completer();

  //static final CameraPosition _kGooglePlex =
  //   CameraPosition(target: LatLng(29.9744676, 31.2851829), zoom: 14.4746);
  @override
  Widget build(BuildContext context) {
    var _kGooglePlex;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //  _kGooglePlex == null
          //    ? CircularProgressIndicator()
          Container(
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
            height: 500,
            width: 400,
          ),
          ElevatedButton(
            child: Text("get location"),
            onPressed: () async {},
          ),
          ElevatedButton(onPressed: () async {}, child: Text("two"))
        ],
      ),
    );
  }
}
//AIzaSyDEtnyyTO2d8GzwyPduCsKwuXNMaxBrNM0