import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final splits = [
      {'km': '1 km', 'pace': '5\'04\"', 'elev': '+8m'},
      {'km': '2 km', 'pace': '4\'58\"', 'elev': '+12m'},
      {'km': '3 km', 'pace': '4\'52\"', 'elev': '-4m'},
      {'km': '4 km', 'pace': '4\'49\"', 'elev': '+2m'},
      {'km': '5 km', 'pace': '4\'54\"', 'elev': '+6m'},
      {'km': '6 km', 'pace': '4\'59\"', 'elev': '+10m'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Win • Kilometer Splits')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: splits.length,
        itemBuilder: (context, i) {
          final s = splits[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(s['km']!, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text('Pace: ${s['pace']}', style: const TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold)),
                Text('Elev: ${s['elev']}', style: const TextStyle(color: Colors.white60)),
              ],
            ),
          );
        },
      ),
    );
  }
}

