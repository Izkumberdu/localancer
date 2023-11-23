import 'package:flutter/material.dart';

class DropdownItems {
  static List<DropdownMenuItem<String>> getCountryItems() {
    return [
      DropdownMenuItem<String>(
        child: Text('Philippines'),
        value: 'Philippines',
      ),
    ];
  }

  static List<DropdownMenuItem<String>> getRegionItems() {
    return [
      DropdownMenuItem<String>(
        child: Text('Central Visayas'),
        value: 'Central Visayas',
      ),
      DropdownMenuItem<String>(
        child: Text('Western Visayas'),
        value: 'Western Visayas',
      ),
    ];
  }

  static List<DropdownMenuItem<String>> getCentralVisayasItems() {
    return [
      DropdownMenuItem<String>(
        child: Text('Bohol'),
        value: 'Bohol',
      ),
      DropdownMenuItem<String>(
        child: Text('Cebu'),
        value: 'Cebu',
      ),
      DropdownMenuItem<String>(
        child: Text('Negros Oriental'),
        value: 'Negros Oriental',
      ),
      DropdownMenuItem<String>(
        child: Text('Siquijor'),
        value: 'Siquijor',
      ),
      DropdownMenuItem<String>(
        child: Text('Talisay City'),
        value: 'Talisay City',
      ),
      DropdownMenuItem<String>(
        child: Text('Minglanilla'),
        value: 'Minglanilla',
      ),
      // Add more Central Visayas cities and municipalities
    ];
  }

  static List<DropdownMenuItem<String>> getWesternVisayasItems() {
    return [
      DropdownMenuItem<String>(
        child: Text('Iloilo City'),
        value: 'Iloilo City',
      ),
      DropdownMenuItem<String>(
        child: Text('Bacolod'),
        value: 'Bacolod',
      ),
      DropdownMenuItem<String>(
        child: Text('Iloilo'),
        value: 'Iloilo',
      ),
      DropdownMenuItem<String>(
        child: Text('Capiz'),
        value: 'Capiz',
      ),
      // Add more Western Visayas cities and municipalities
    ];
  }
}
