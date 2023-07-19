import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Locat_move extends StatefulWidget {
  Locat_move({Key? key}) : super(key: key);

  @override
  State<Locat_move> createState() => _Locat_moveState();
}

class _Locat_moveState extends State<Locat_move> {
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
    setMarkerCustomImage();
    getPostion();
    super.initState();
  }

  Completer<GoogleMapController> _controller = Completer();
  late GoogleMapController gmc;

  setMarkerCustomImage() async {
    mymarker.add(
      Marker(
          onTap: () {
            print("tab marker");
          },
          draggable: true,
          onDragEnd: (LatLng t) {
            print("Drag End");
          },
          // icon: await BitmapDescriptor.fromAssetImage(
          //     ImageConfiguration.empty, "image/f3.png"),
          markerId: MarkerId("1"),
          infoWindow: InfoWindow(
              title: "Ahmed",
              onTap: () {
                print("tap info marker");
              }),
          // markerId: MarkerId("1"),
          position: LatLng(29.9744676, 31.2851829)),
    );
  }

  late Set<Marker> mymarker = {
    // Marker(
    //     infoWindow:
    //         InfoWindow(title: "Ahmed", snippet: "Ahmed is belnog to basel"),
    //     markerId: MarkerId("1"),
    //     position: LatLng(29.9744676, 31.2851829)),
    Marker(
        visible: true,
        infoWindow:
            InfoWindow(title: "Basel", snippet: "Basel belong to Ahmed"),
        markerId: MarkerId("2"),
        position: LatLng(29.982952370095994, 31.27788908779621))
  };
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
              markers: mymarker,
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                // _controller.complete(controller);
                gmc = controller;
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
          ElevatedButton(
            child: Text("Move Lcation"),
            onPressed: () async {
              cl = await getLatAndLong();
              print(cl.latitude);
              print(cl.longitude);

              LatLng latLng = LatLng(cl.latitude, cl.longitude);
//              gmc.animateCamera(CameraUpdate.newLatLng(latLng));
              gmc.animateCamera(CameraUpdate.newCameraPosition(
                  CameraPosition(target: latLng, zoom: 17)));
            },
          ),
          ElevatedButton(
            child: Text("xy"),
            onPressed: () async {
              cl = await getLatAndLong();
              print(cl.latitude);
              print(cl.longitude);
              LatLng latLng = LatLng(cl.latitude, cl.longitude);
//              gmc.animateCamera(CameraUpdate.newCameraPosition(
              var xy = await gmc.getLatLng(ScreenCoordinate(x: 200, y: 200));
              print(xy);
            },
          ),
          Container(
            child: Center(
              child: Image.asset("image/f3.png"),
            ),
          )
        ],
      ),
    );
  }
}


//AIzaSyDEtnyyTO2d8GzwyPduCsKwuXNMaxBrNM0