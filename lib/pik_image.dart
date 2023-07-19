import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
class Pik_image extends StatefulWidget {
  Pik_image({Key? key}) : super(key: key);

  @override
  State<Pik_image> createState() => _Pik_imageState();
}

class _Pik_imageState extends State<Pik_image> {
late File image;
final imagepicker=ImagePicker();

uploadImage(){
  var pickedImage=imagepicker.getImage(source: ImageSource.camera);
  //image=File(pickedImage.path);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: (Column(children: [
          ElevatedButton(onPressed: (){}, child: Text(""))
        ],)

        
        );
  }
}
