import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/widget/city_card.dart';
import 'package:bwa_cozy/widget/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widget/space_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: edge,
          ),
          child: ListView(
            children: [
              //TITLE HEADER TEXT//
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Explore Now',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'mencari kosan yang nyaman',
                  style: greyTextStyle,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              //POPULAR CITIES WIDGET//
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Kota Populer',
                  style: regulerTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    CityCard(
                      City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/city1.png',
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    CityCard(
                      City(
                        id: 2,
                        name: 'Solo',
                        imageUrl: 'assets/city2.png',
                        isPopular: true,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(
                      City(
                        id: 3,
                        name: 'Surabaya',
                        imageUrl: 'assets/city3.png',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              // RECOMENDED CITIES PAGE//
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Recommended Space',
                  style: regulerTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  children: [
                    SpaceCard(
                      Space(
                        id: 1,
                        name: 'kontrakan pak camat',
                        price: 500,
                        city: 'Bekasi',
                        country: 'Jawa Barat',
                        imageUrl: 'assets/space1.png',
                        rating: 4,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(
                      Space(
                        id: 2,
                        name: 'kontrakan pak camat',
                        price: 500,
                        city: 'Karawang',
                        country: 'Jawa Barat',
                        imageUrl: 'assets/space2.png',
                        rating: 5,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(
                      Space(
                        id: 3,
                        name: 'kontrakan pak camat',
                        price: 500,
                        city: 'Cikarang',
                        country: 'Jawa Barat',
                        imageUrl: 'assets/space3.png',
                        rating: 5,
                      ),
                    ),
                  ],
                ),
              ),
              //note : tips area
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Tips dan Petunjuk',
                  style: regulerTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  children: [
                    TipsCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
