import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget{
    @override
  _generateQr createState() => _generateQr();
}

class _generateQr extends State<Page1> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  final Set<String> _favorites = Set<String>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generador de Qr'),
       
      ),
      body: WebView(
        initialUrl: 'https://www.qr-code-generator.com/solutions/dynamic-url-qr-code/?ut_source=google_c&ut_medium=cpc&ut_campaign=g_en_dsa&ut_content=solutions_multi_url&ut_term=_b&gclid=Cj0KCQjw3f6HBhDHARIsAD_i3D8rwx6BfthRfiFmfoY5bYis1dcRLjNu1dtsJKCd69JsTqaZkMV3_ogaAolIEALw_wcB',
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
      
    );
  }
  
}
