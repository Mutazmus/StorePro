// ignore_for_file: prefer_const_constructors, unnecessary_this, sort_child_properties_last

import 'package:deliveryfood/presentation/screens/home.dart';
import 'package:deliveryfood/presentation/widgets/text.dart';
import 'package:deliveryfood/presentation/widgets/textFormFiled.dart';
import 'package:flutter/material.dart';

class AddNewItem extends StatefulWidget {
  const AddNewItem({super.key});

  @override
  State<AddNewItem> createState() => _AddNewItemState();
}

class _AddNewItemState extends State<AddNewItem> {
  String dropdownvalue = 'Halal Lap Office';
  String dropdownvalue1 = 'Halal ';

  var items = [
    'Halal Lap Office',
    'Item 2',
  ];
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        //  backgroundColor: Colors.white,
        title: Row(children: [
          DecoratedBox(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  icon: Icon(Icons.arrow_back))),
          SizedBox(
            width: 20,
          ),
          Mytext(
            text: 'Add New Item',
            textColor: Colors.black,
            fontSize: 17,
          ),
          SizedBox(
            width: 120,
          ),
          Mytext(
            text: 'RESET',
            fontSize: 17,
            textColor: Colors.orange,
          ),
        ]),
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 270),
                child: Mytext(
                  text: 'ITEM NAME',
                ),
              ),
              SizedBox(
                height: 5,
              ),
              MyTextFromField(
                borderColor: Colors.grey[200],
                expands: false,
                obscureText: false,
                labelText: 'Mazki Halim',
              ),
              SizedBox(
                height: 20,
              ),

              /////////////////////UPLOAD PHOTO////////////////////////////
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Mytext(
                  textColor: Colors.grey[500],
                  text: 'UPLOAD PHOTO/VIDEO',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                clipBehavior: Clip.hardEdge,
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 0, right: 5)),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/burger.png')),
                          color: Colors.orange[50],
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.orange[50],
                          borderRadius: BorderRadius.circular(20)),
                      child: IconButton(
                        iconSize: 40,
                        icon: const Icon(
                          Icons.cloud_upload_outlined,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      child: IconButton(
                        iconSize: 40,
                        icon: const Icon(
                          Icons.cloud_upload_outlined,
                        ),
                        onPressed: () {},
                      ),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.orange[50],
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              /////////////////////PRICE////////////////////////////
              Padding(
                padding: const EdgeInsets.only(right: 290),
                child: Mytext(
                  text: 'PRICE',
                  textColor: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  MyTextFromField(
                    width: 120,
                    height: 40,
                    expands: false,
                    obscureText: false,
                    labelText: '\$50',
                    fontSize: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Checkbox(
                    checkColor: Colors.orange,
                    hoverColor: Colors.orange,
                    activeColor: Colors.orange,
                    value: this.value,
                    onChanged: (value) {
                      setState(() {
                        this.value = false;
                      });
                    },
                  ),
                  Mytext(
                    text: 'Pick',
                    textColor: Colors.grey[500],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Checkbox(
                    value: this.value,
                    onChanged: (value) {
                      setState(() {
                        this.value = false;
                      });
                    },
                  ),
                  Mytext(
                    text: 'Delivery',
                    textColor: Colors.grey[500],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 270),
                child: Mytext(
                  text: 'INGRIDENS',
                  textColor: Colors.grey[500],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              /////////////////////BASIC////////////////////////////
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Mytext(
                      text: 'Basic',
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 235,
                  ),
                  DropdownButton(
                    iconDisabledColor: Colors.grey[500],
                    focusColor: Colors.grey[500],
                    iconEnabledColor: Colors.grey[500],
                    dropdownColor: Colors.grey[500],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    value: dropdownvalue,
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          'See All',
                          selectionColor: Colors.grey,
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {},
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          iconSize: 40,
                          icon: const Icon(
                            Icons.person,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Mytext(
                        text: 'Garic',
                        fontSize: 15,
                        textColor: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.grey[500],
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          iconSize: 40,
                          icon: const Icon(
                            Icons.person,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Mytext(
                        text: 'Onion',
                        fontSize: 15,
                        textColor: Colors.grey[500],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          iconSize: 40,
                          icon: const Icon(
                            Icons.person,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Mytext(
                        text: 'Salt',
                        fontSize: 15,
                        textColor: Colors.grey[500],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.grey[500],
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          iconSize: 40,
                          icon: const Icon(
                            Icons.person,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Mytext(
                        text: 'Patato',
                        fontSize: 15,
                        textColor: Colors.grey[500],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          iconSize: 40,
                          icon: const Icon(
                            Icons.person,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Mytext(
                        text: 'Orange',
                        fontSize: 15,
                        textColor: Colors.grey[500],
                      ),
                    ],
                  ),
                ],
              ),

              /////////////////////////////////////////FRUITS/////////////////////////////////////
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Mytext(
                      text: 'Fruits',
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 235,
                  ),
                  DropdownButton(
                    iconDisabledColor: Colors.grey[500],
                    focusColor: Colors.grey[500],
                    iconEnabledColor: Colors.grey[500],
                    dropdownColor: Colors.grey[500],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    value: dropdownvalue,
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          'See All',
                          selectionColor: Colors.grey[500],
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {},
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  for (int i = 1; i < 6; i++)
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                                color: Colors.grey[500],
                                borderRadius: BorderRadius.circular(50)),
                            child: IconButton(
                              iconSize: 40,
                              icon: const Icon(
                                Icons.fastfood_outlined,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(
                            height: 1,
                          ),
                          Mytext(
                            text: 'Apple',
                            fontSize: 15,
                            textColor: Colors.grey[500],
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              SizedBox(
                height: 15,
              ),

              /////////////////////////////////////////Details & Button/////////////////////////////////////
              Padding(
                padding: const EdgeInsets.only(right: 275),
                child: Mytext(
                  text: 'DETAILS',
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 15,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyTextFromField(
                  obscureText: false,
                  hintText:
                      'Learn Learn LearnLearn LearnLearn Learn LearnLearn',
                  contentPadding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                ),
              ),
              SizedBox(
                height: 15,
              ),

              ElevatedButton(
                child: Text(
                    '                           SAVE CHANGES                            '),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: TextStyle(
                        color: Colors.orange,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
