import 'package:flutter/material.dart';
import 'package:hw/pages/create_note_page.dart';
import 'package:hw/pages/view_note_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _showCreateNoteTab() {
    _tabController.index = 1;
  }

  void _showViewNoteTab() {
    _tabController.index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          ViewNotePage(showCreateNote: _showCreateNoteTab),
          CreateNotePage(afterCreateAction: _showViewNoteTab),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: TabBar(
          controller: _tabController,
          tabs: [
            const Tab(icon: Icon(Icons.list_alt), text: 'Просмотр'),
            const Tab(icon: Icon(Icons.create), text: 'Создать'),
          ],
        ),
      ),
    );
  }
}
