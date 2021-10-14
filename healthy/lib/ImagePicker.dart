import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImageInputState();
  }
}

class _ImageInputState extends State<ImageInput> {
  var _pickedImageFile;
  var _imageFile;

  void _getImage(BuildContext context, ImageSource source) async {
    File _imageFile1;
    final _storage = FirebaseStorage.instance;

    // ignore: deprecated_member_use
    ImagePicker pik = ImagePicker();
    await pik.getImage(source: source, maxWidth: 400.0).then((img) => {
          setState(() {
            _pickedImageFile = img;
            _imageFile = File(_pickedImageFile.path);
          })
        });
    String filepath = 'images/${DateTime.now()}.png';
    var snapShot = await _storage
        .ref()
        .child(filepath)
        .putFile(_imageFile)
        .whenComplete(() => {print('done')});
    var url = await snapShot.ref.getDownloadURL();
    print(url);
    //.then((File image) {
    //   setState(() {
    //     _imageFile = image;
    //   });
    //   Navigator.pop(context);
    // });
  }

  void _openImagePicker(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 150.0,
            padding: EdgeInsets.all(10.0),
            child: Column(children: [
              Text(
                'Pick an Image',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                textColor: Theme.of(context).primaryColor,
                child: Text('Use Camera'),
                onPressed: () {
                  _getImage(context, ImageSource.camera);
                },
              ),
              FlatButton(
                textColor: Theme.of(context).primaryColor,
                child: Text('Use Gallery'),
                onPressed: () {
                  _getImage(context, ImageSource.gallery);
                },
              )
            ]),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final buttonColor = Theme.of(context).primaryColor;
    return Column(
      children: <Widget>[
        OutlineButton(
          borderSide: BorderSide(
            color: Colors.green,
            width: 2.0,
          ),
          onPressed: () {
            _openImagePicker(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.camera_alt,
                color: Colors.green,
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                'Add Image',
                style: TextStyle(color: Colors.green),
              )
            ],
          ),
        ),
        SizedBox(height: 10.0),
        _imageFile == null
            ? Text('Please pick an image.')
            : Image.file(
                _imageFile,
                fit: BoxFit.cover,
                height: 300.0,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.topCenter,
              )
      ],
    );
  }
}
