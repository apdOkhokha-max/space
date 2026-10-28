import 'package:flutter/material.dart';
import 'package:space/core/App_%20planets/App_planets.dart';
import 'package:space/core/App_photo/App_photo.dart';

class DetailsScreen extends StatelessWidget {
  final AppPlanets planets;
  const DetailsScreen({super.key,required this.planets});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(AppPhoto.constPhoto),
          ),

          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                              color: Color(0xFFEE403D),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              weight: 16,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        planets.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                   SizedBox(height: 110),

                  
                  Text(
                    planets.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                   SizedBox(height: 40),


                  Center(
                    child: Image.asset(planets.images, width: 340,height: 340,),
                  ),const SizedBox(height: 32),

                  const Text(
                    'About',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),

                  Text(
                    planets.description,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 16),

                  _infoRow('Distance from Sun (km)', planets.distanceFromSun),
                  _infoRow('Length of Day (hours)', planets.lengthOfDay),
                  _infoRow('Orbital Period (Earth years)', planets.orbitalPeriod),
                  _infoRow('Radius (km)', planets.radius),
                  _infoRow('Mass (kg)', planets.mass),
                  _infoRow('Gravity (m/s²)', planets.gravity),
                  _infoRow('Surface Area (km²)', planets.surfaceArea),
                  const SizedBox(height: 24),
                ],

              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Text(
        '$label : $value',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
