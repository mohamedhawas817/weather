import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';


class Getlocation {

  double latitie;
  double longitude;


  Future<void> getloca() async {
    try {
      Position location = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      latitie = location.latitude;
      longitude = location.longitude;

    }catch(e) {
      print(e);
    }

  }

}