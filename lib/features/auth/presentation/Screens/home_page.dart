import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/features/auth/presentation/controller/providers.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Text("Welcome, ${authProvider.user?.email ?? 'User'}"),
      ),
    );
  }
}
