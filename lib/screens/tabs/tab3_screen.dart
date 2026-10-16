import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Training Plans')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _planCard('Couch to 5K Finisher', '8 Weeks • 3 Runs / week', 'Beginner'),
          _planCard('10K Speed & Tempo Builder', '10 Weeks • 4 Runs / week', 'Intermediate'),
          _planCard('Half Marathon Sub 1:45', '12 Weeks • 5 Runs / week', 'Advanced'),
        ],
      ),
    );
  }

  Widget _planCard(String title, String desc, String tag) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16), maxLines: 1, overflow: TextOverflow.ellipsis),
              Text(tag, style: const TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold, fontSize: 12)),
            ],
          ),
          const SizedBox(height: 6),
          Text(desc, style: const TextStyle(color: Colors.white60, fontSize: 13)),
        ],
      ),
    );
  }
}

