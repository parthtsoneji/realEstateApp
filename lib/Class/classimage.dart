import 'package:flutter/material.dart';

class ImageData {
  final String image;

  ImageData(this.image);
}

class preferableData {
  final String image;
  final String name;

  preferableData({required this.image, required this.name});
}

class paymentProcess {
  final String image;

  paymentProcess(this.image);
}

class categoryName {
  final String name;

  categoryName({required this.name});
}

class ImageHome {
  final String name;
  final String sale;
  final String imaeg;

  ImageHome({required this.name, required this.sale, required this.imaeg});
}

class FeatureImages {
  final String image;
  final String name;

  FeatureImages({required this.image, required this.name});
}

class LocationImages {
  final String image;
  final String name;

  LocationImages({required this.image, required this.name});
}

class HomeEstate {
  final String name;
  final String image;
  final String price;
  final String icon;
  final String start;

  HomeEstate(
      {required this.name,
      required this.image,
      required this.price,
      required this.icon,
      required this.start});
}

class FeatureListImage {
  final String name;
  final String image;
  final String number;

  FeatureListImage(
      {required this.name, required this.image, required this.number});
}

class AgentDetails {
  final String name;
  final String image;
  final String star;
  final String number;

  AgentDetails(
      {required this.name,
      required this.image,
      required this.star,
      required this.number});
}

class Notificationdetail {
  final String image;
  final String name;
  final String message;
  final String time;
  String image2;

  Notificationdetail(
      this.image, this.name, this.message, this.time, this.image2);
}

class ChatList {
  final String image;
  final String name;
  final String message;
  final String time;
  final String no;

  ChatList(this.image,this.name,this.message, this.time,this.no, );
}

class SearchList{
  final String name;
  final String image;
  final String icon;
  final String price;

  SearchList(this.name, this.image, this.icon, this.price);
}

class TransactionList {
  final String icon;
  final String image;
  final String number;
  final String price;
  final String image2;
  final String logo;

  TransactionList(
      this.icon, this.image, this.number, this.price, this.image2, this.logo);
}