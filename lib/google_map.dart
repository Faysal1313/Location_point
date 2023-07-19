import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Goolge_map extends StatefulWidget {
  Goolge_map({Key? key}) : super(key: key);

  @override
  State<Goolge_map> createState() => _Goolge_mapState();
}

class _Goolge_mapState extends State<Goolge_map> {
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

  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex =
      CameraPosition(target: LatLng(29.9744676, 31.2851829), zoom: 14.4746);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
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
            onPressed: () async {
              cl = await getLatAndLong();
              print(cl.latitude);
              print(cl.longitude);

              List<Placemark> placemarks =
                  await placemarkFromCoordinates(cl.latitude, cl.longitude);
              print(placemarks[0].country);
            },
          ),
        ],
      ),
    );
  }
}


//AIzaSyDEtnyyTO2d8GzwyPduCsKwuXNMaxBrNM0