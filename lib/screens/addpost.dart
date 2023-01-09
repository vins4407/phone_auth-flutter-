// import 'dart:typed_data';

// import 'package:flutter/material.dart';
// import 'package:flyin/controllers/uploadMethods.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:provider/provider.dart';

// import '../providers/userProvider.dart';

// class AddPostScreen extends StatefulWidget {
//   const AddPostScreen({super.key});

//   @override
//   State<AddPostScreen> createState() => _AddPostScreenState();
// }

// class _AddPostScreenState extends State<AddPostScreen> {
//   Uint32List? _file;
//   bool isloading = false;
//   final TextEditingController _descriptionController = TextEditingController();
//   final TextEditingController _titleController = TextEditingController();
//   final TextEditingController _categoryController = TextEditingController();
//   final TextEditingController _locationController = TextEditingController();

//   pickvideo(ImageSource source) async {
//     final ImagePicker _imagePicker = ImagePicker();

//     XFile? _file = await _imagePicker.pickVideo(source: source);
//     if (_file != null) {
//       return await _file.readAsBytes();
//     }
//     print('No video Selected');
//   }

//   _selectVideo(BuildContext parentContext) async {
//     return showDialog(
//       context: parentContext,
//       builder: (BuildContext context) {
//         return SimpleDialog(
//           title: Text('Create a post'),
//           children: [
//             SimpleDialogOption(
//               padding: const EdgeInsets.all(20),
//               child: Text('Take a Video'),
//               onPressed: () async {
//                 Navigator.pop(context);
//                 Uint32List file = await pickvideo(ImageSource.camera);
//                 setState(() {
//                   _file = file;
//                 });
//               },
//             ),
//             SimpleDialogOption(
//                 padding: const EdgeInsets.all(20),
//                 child: const Text('Choose from Gallery'),
//                 onPressed: () async {
//                   Navigator.of(context).pop();
//                   Uint32List file = await pickvideo(ImageSource.gallery);
//                   setState(() {
//                     _file = file;
//                   });
//                 }),
//             SimpleDialogOption(
//               padding: const EdgeInsets.all(20),
//               child: const Text("Cancel"),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void postVideo(String uid, String username) async {
//     setState(() {
//       isloading = true;
//     });
//     try {
//       String res = await firestoreMethods()
//           .uploadPost(description, file, uid, username, profImage);
//     } catch (e) {}
//   }

//   void clear() {
//     setState(() {
//       _file = null;
//     });
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _descriptionController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final UserProvider userProvider = Provider.of<UserProvider>(context);

//     return _file == null
//         ? Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//             Center(
//               child: IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.add_a_photo_outlined,
//                   size: 35,
//                 ),
//               ),
//             ),
//             SizedBox(height: 10, width: 10),
//             RichText(
//               textAlign: TextAlign.center,
//               text: const TextSpan(
//                 text: "Add video",
//                 style: TextStyle(color: Colors.black54, fontSize: 25),
//               ),
//             ),
//           ])
//         : Scaffold(
//             appBar: AppBar(
//               leading: IconButton(
//                 icon: const Icon(Icons.arrow_back),
//                 onPressed: clear,
//               ),
//               title: const Text(
//                 'Post to',
//               ),
//               centerTitle: false,
//               actions: <Widget>[
//                 TextButton(
//                   onPressed: () {},
//                   child: const Text(
//                     "Post",
//                     style: TextStyle(
//                         color: Colors.blueAccent,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16.0),
//                   ),
//                 )
//               ],
//             ),
//             // POST FORM
//             body: Column(
//               children: <Widget>[
//                 isloading
//                     ? const LinearProgressIndicator()
//                     : const Padding(padding: EdgeInsets.only(top: 0.0)),
//                 const Divider(height: 20),
//                 SizedBox(
//                   height: 80.0,
//                   width: 80.0,
//                   child: AspectRatio(
//                     aspectRatio: 487 / 451,
//                     child: Container(
//                       decoration: BoxDecoration(
//                           image: DecorationImage(
//                         fit: BoxFit.fill,
//                         alignment: FractionalOffset.topCenter,
//                         image: ,
//                       )),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width * 0.3,
//                   child: TextField(
//                     controller: _titleController,
//                     decoration: const InputDecoration(
//                         hintText: "Give a title...",
//                         border: InputBorder.none),
//                     maxLines: 8,
//                   ),
//                 ),
//                 const Divider(),
//               ],
//             ),
//           );
//     ;
//   }
// }
