import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget{
    @override
  _generateQr createState() => _generateQr();
}

class _generateQr extends State<Page1> {
  // Completer<WebViewController> _controller = Completer<WebViewController>();
  // final Set<String> _favorites = Set<String>();

  @override
  Widget build(BuildContext context) {
    return Center(child:RaisedButton(
              child: Text("Ir a Crear QR"),splashColor: Colors.white10,color: Colors.greenAccent,
                onPressed: (){
              launch("https://app.uqr.me/panel/414636/qrs/808602/1541685/edit-content#qr-content");
            }), 
      // appBar: AppBar(
      //   title: const Text('Generador de Qr'),
       
      // ),
      
      
    );
  }
  
}
