import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab1Screen extends StatefulWidget {
  const Tab1Screen({super.key});
  @override
  State<Tab1Screen> createState() => _Tab1ScreenState();
}

class _Tab1ScreenState extends State<Tab1Screen> {
  bool _running = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • CardioMax GPS'),
        actions: [
          IconButton(
            icon: const Icon(Icons.gps_fixed, color: AppTheme.primaryColor),
            onPressed: () => RoutingService.openRegistrationUrl(),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [AppTheme.primaryColor.withValues(alpha: 0.3), AppTheme.surfaceColor],
                radius: 0.9,
              ),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.3)),
            ),
            child: Column(
              children: [
                const Text('DISTANCE', style: TextStyle(color: Colors.white70, fontSize: 12, letterSpacing: 1.5, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const Text('6.42 km', style: TextStyle(fontSize: 54, fontWeight: FontWeight.w900, color: AppTheme.primaryColor)),
                const SizedBox(height: 12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text('PACE', style: TextStyle(fontSize: 11, color: Colors.white60)),
                        SizedBox(height: 2),
                        Text('4\'56\" /km', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Text('TIME', style: TextStyle(fontSize: 11, color: Colors.white60)),
                        SizedBox(height: 2),
                        Text('31:45', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Text('BPM', style: TextStyle(fontSize: 11, color: Colors.white60)),
                        SizedBox(height: 2),
                        Text('154', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.redAccent)),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 22),
                ElevatedButton.icon(
                  onPressed: () => setState(() => _running = !_running),
                  icon: Icon(_running ? Icons.pause : Icons.play_arrow),
                  label: Text(_running ? 'Pause Run' : 'Start Outdoor GPS Run'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primaryColor,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(child: _metric('Calories', '482 kcal', Icons.local_fire_department)),
              const SizedBox(width: 12),
              Expanded(child: _metric('Elevation', '+64 m', Icons.terrain)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _metric(String label, String val, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: AppTheme.primaryColor, size: 24),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(color: Colors.white60, fontSize: 12), maxLines: 1, overflow: TextOverflow.ellipsis),
          Text(val, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

