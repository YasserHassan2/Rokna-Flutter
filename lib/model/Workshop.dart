import 'package:parse_server_sdk/parse_server_sdk.dart';

class Workshop {
  String title;
  String phone_number;
  String img;
  String description;
  ParseGeoPoint location;


  Workshop({this.title,this.phone_number,this.img,this.description,this.location});



}