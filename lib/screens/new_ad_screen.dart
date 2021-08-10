import 'package:ads_platform/screens/home_screen.dart';
import 'package:ads_platform/ui/constants_ui.dart';
import 'package:flutter/material.dart';
class NewAd extends StatefulWidget {
  static const id = 'new_ads';

  @override
  _NewAdState createState() => _NewAdState();
}

class _NewAdState extends State<NewAd> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String categoryCurrentItem = 'Cars';
  List<String> categoryList = <String>[
    'Cars',
    'Closes',
    'Smartphones',
    'PC'
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pushNamed(context, HomePage.id);
          }, icon: Icon(Icons.backspace_rounded)),
          title: Text('New Add'),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Form(
                key: _key,
                child: Column(
                  children: [
                    Container(
                      color: Colors.redAccent,
                      height: 150,
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PageView(
                          pageSnapping: true,
                         children: [
                           Container(height: 40,width: 180, color: Colors.deepOrange,),
                           Container(height: 40,width: 180, color: Colors.blue,),
                           Container(height: 40,width: 180, color: Colors.yellow,)
                         ],
                        ),
                      ),

                    ),
                    SizedBox(height: 20.0,),
                       TextFormField(
                        decoration: textnewaddfielddecoration,
                      ),
                    SizedBox(height: 8.0,),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: DropdownButton(
                          value: categoryCurrentItem,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: 30,
                            elevation: 15,
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            underline: Container(
                              width: 150,
                              height: 2,
                              color: Colors.purple,
                            ),
                            onChanged: (String? value){
                              setState(() {
                                categoryCurrentItem = value!;
                              });
                            },
                            items: categoryList.map<DropdownMenuItem<String>>((String value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            )).toList()
                 ),
                      ),
                    ),
                    SizedBox(height: 8.0,),

                  ],
                ),
              ),
            ),
          ),
        )
      ),
    );
  }
}
