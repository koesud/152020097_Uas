import 'package:flutter/material.dart';
import 'package:pemmob_app/utils/constants.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

bool _bool = false;

List<String> jurusan = <String>["...", "Siswa", "Pelajar", "Wiraswasta", "PNS"];

List<String> angkatan = <String>['2018', '2019', '2020', '2021', '2022'];

enum Gender { male, female }

void _showToast(BuildContext context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('Data Berhasil Disimpan'),
      action:
          SnackBarAction(label: 'OK', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}

class DropdownJurusan extends StatefulWidget {
  const DropdownJurusan({Key? key}) : super(key: key);

  @override
  State<DropdownJurusan> createState() => _DropdownJurusanState();
}

class _DropdownJurusanState extends State<DropdownJurusan> {
  String dropdownValue = jurusan.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.blueAccent,
      ),
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: jurusan.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownAngkatan extends StatefulWidget {
  const DropdownAngkatan({Key? key}) : super(key: key);

  @override
  State<DropdownAngkatan> createState() => _DropdownAngkatanState();
}

class _DropdownAngkatanState extends State<DropdownAngkatan> {
  String dropdown_angkatan = angkatan.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdown_angkatan,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.blueAccent,
      ),
      onChanged: (String? value) {
        setState(() {
          dropdown_angkatan = value!;
        });
      },
      items: angkatan.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenScreenState();
}

class _AccountScreenScreenState extends State<AccountScreen> {
  File? imageFile;
  Gender? _character = Gender.male;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "Complete your profile!",
                      style: TextStyle(
                          fontFamily: 'Work Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: 125,
                    height: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: Colors.grey.shade300,
                    ),
                    child: Container(
                      child: imageFile == null
                          ? Container(
                              alignment: Alignment.center,
                            )
                          : Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                // shape: BoxShape.circle,
                                borderRadius: BorderRadius.circular(70),
                                // color: Colors.grey.shade300,
                              ),
                              child: Image.file(
                                imageFile!,
                                fit: BoxFit.cover,
                              ),
                            ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        _getFromGallery();
                      },
                      child: const Text(
                        'Image From Gallery',
                        style: TextStyle(
                          color: kTextColorBlack,
                          fontFamily: 'Work Sans',
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const Text(
                      'or',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontFamily: 'Work Sans',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        getFromCamera();
                      },
                      child: const Text(
                        'Image From Camera',
                        style: TextStyle(
                          color: kTextColorBlack,
                          fontFamily: 'Work Sans',
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextField(
                  readOnly: true,
                  style: const TextStyle(
                    fontFamily: 'Work Sans',
                    color: kTextColorBlack,
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.5,
                        color: kPrimaryColor,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.5,
                        color: kPrimaryColor,
                      ),
                    ),
                    hintText: "Fadillah Muamar",
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Card(
                  child: TextField(
                    maxLines: 3,
                    style: TextStyle(
                      fontFamily: 'Work Sans',
                      color: kTextColorBlack,
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: kFieldFillColor,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.5,
                          color: kPrimaryColor,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.5,
                          color: kPrimaryColor,
                        ),
                      ),
                      hintText: "Alamat",
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Pekerjaan: ',
                      style: TextStyle(
                        fontFamily: 'Work Sans',
                        color: kTextColorBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    DropdownJurusan(),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Gender: ',
                      style: TextStyle(
                        fontFamily: 'Work Sans',
                        color: kTextColorBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.zero,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Male',
                        style: TextStyle(
                          fontFamily: 'Work Sans',
                          color: kTextColorBlack,
                          fontSize: 14,
                        ),
                      ),
                      leading: Radio<Gender>(
                        value: Gender.male,
                        groupValue: _character,
                        onChanged: (Gender? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text(
                        'Female',
                        style: TextStyle(
                          fontFamily: 'Work Sans',
                          color: kTextColorBlack,
                          fontSize: 14,
                        ),
                      ),
                      leading: Radio<Gender>(
                        value: Gender.female,
                        groupValue: _character,
                        onChanged: (Gender? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 20,
                  bottom: 0,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () {
                    _showToast(context);
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontFamily: 'Work Sans',
                      fontSize: 16,
                      color: Color(0xFFFFFFFD),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        _bool = false;
      });
    }
  }

  getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
}
