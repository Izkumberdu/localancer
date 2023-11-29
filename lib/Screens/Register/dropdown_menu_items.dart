import 'package:flutter/material.dart';

class DropdownItems {
  static List<DropdownMenuItem<String>> getCountryItems() {
    return [
      const DropdownMenuItem<String>(
        value: 'Philippines',
        child: Text('Philippines'),
      ),
    ];
  }

  static List<DropdownMenuItem<String>> getRegionItems() {
    return [
      const DropdownMenuItem<String>(
        value: 'Central Visayas',
        child: Text('Central Visayas'),
      ),
      const DropdownMenuItem<String>(
        value: 'Western Visayas',
        child: Text('Western Visayas'),
      ),
    ];
  }

  static List<DropdownMenuItem<String>> getCentralVisayasItems() {
    return [
      const DropdownMenuItem<String>(
        value: 'Bohol',
        child: Text('Bohol'),
      ),
      const DropdownMenuItem<String>(
        value: 'Cebu',
        child: Text('Cebu'),
      ),
      const DropdownMenuItem<String>(
        value: 'Negros Oriental',
        child: Text('Negros Oriental'),
      ),
      const DropdownMenuItem<String>(
        value: 'Siquijor',
        child: Text('Siquijor'),
      ),
      const DropdownMenuItem<String>(
        value: 'Talisay City',
        child: Text('Talisay City'),
      ),
      const DropdownMenuItem<String>(
        value: 'Minglanilla',
        child: Text('Minglanilla'),
      ),
      // Add more Central Visayas cities and municipalities
    ];
  }

  static List<DropdownMenuItem<String>> getWesternVisayasItems() {
    return [
      const DropdownMenuItem<String>(
        value: 'Iloilo City',
        child: Text('Iloilo City'),
      ),
      const DropdownMenuItem<String>(
        value: 'Bacolod',
        child: Text('Bacolod'),
      ),
      const DropdownMenuItem<String>(
        value: 'Iloilo',
        child: Text('Iloilo'),
      ),
      const DropdownMenuItem<String>(
        value: 'Capiz',
        child: Text('Capiz'),
      ),
      // Add more Western Visayas cities and municipalities
    ];
  }
}
