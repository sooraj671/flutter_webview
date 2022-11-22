import 'package:flutter/material.dart';
import 'web_view_container.dart';

class Home extends StatelessWidget {
  final _links = ['https://google.com', 'https://youtube.com'];

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: _links.map((link) => _urlButton(context, link)).toList(),
            ),
          ),
        ),
        );
  }

  Widget _urlButton(BuildContext context, String url) {
    return ElevatedButton(
      child: Text(url),
      onPressed: () => handleURLButtonPress(context, url),
    );
  }

  void handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}
