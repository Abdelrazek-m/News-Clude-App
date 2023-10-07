import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

late final String u;

  
class ArtcialPage extends StatefulWidget {
  const ArtcialPage({super.key, required this.url});
  final String? url;
  @override
  State<ArtcialPage> createState() => _ArtcialPageState();
}

class _ArtcialPageState extends State<ArtcialPage> {
  late final WebViewController controller;
  double loadingPercentage=0.0;
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(widget.url!),
      )..setBackgroundColor(Colors.white)
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (url) {
          setState(() {
            loadingPercentage = 0;
          });
        },
        onProgress: (progress) {
          setState(() {
            loadingPercentage = progress.toDouble();
          });
        },
        onPageFinished: (url) {
          setState(() {
            loadingPercentage = 100;
          });
        },
      ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loadingPercentage < 100
          ? Center(
              child:  LinearProgressIndicator(
                value: loadingPercentage / 100.0,
              ),
            )
          : WebViewWidget(controller: controller),
    );
  }
}
