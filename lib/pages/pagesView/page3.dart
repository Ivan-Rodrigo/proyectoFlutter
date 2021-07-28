import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImagePickerState();
  }
}

class _ImagePickerState extends State<ImagePickerWidget> {
  var _imgPath;

  @override
  Widget build(BuildContext context) {
    return Center(
        // appBar: AppBar(
        //   title: Text("ImagePicker"),
        // ),
        // body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _ImageView(_imgPath),
              // RaisedButton(
              //   onPressed: _takePhoto,
              //   child: Text ("Foto"),
              // ),
              RaisedButton(color:Colors.greenAccent,
                onPressed: _openGallery,
                                 child: Text ("Seleccionar foto"),
              ),
            ],
          ),
        );
  }

    //  / * Control de imagen * /
  Widget _ImageView(imgPath) {
    if (imgPath == null) {
      return Center(
                 child: Text ("Seleccione una Foto "),
      );
    } else {
      return Image.file(
        imgPath,
      );
    }
  }

  
     /*Toma una foto*/
  _takePhoto() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _imgPath = image;
    });
  }

     /*Álbum*/
  _openGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imgPath = image;
    });
  }
}