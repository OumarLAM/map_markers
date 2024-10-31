import 'package:flutter/material.dart';
import "package:map_markers/screens/FavoritePlacesScreen.dart";
import "package:map_markers/screens/infoScreen.dart";
import "package:map_markers/screens/mapscreen.dart";
import 'package:lucide_icons/lucide_icons.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}
class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Map marker'),
        backgroundColor: Colors.transparent,
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          MapsScreen(),
          FavoritePlacesScreen(),
          const InfoScreen(),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: _tabController,
        labelColor: Colors.indigoAccent,
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.indigoAccent,
        tabs: const [
          Tab(icon: Icon(LucideIcons.locate), text: 'Map'),
          Tab(icon: Icon(LucideIcons.sparkles), text: 'Favorites'),
          Tab(icon: Icon(Icons.info), text: 'Info'),
        ],
      ),
    );
  }
}
