import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AddScreen extends StatefulWidget {
  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  TextEditingController _controller = TextEditingController();

  Box? contactBox;
  @override
  void initState() {
    contactBox = Hive.box('contact-box');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                    hintText: 'Enter your Data', border: OutlineInputBorder()),
              ),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                    onPressed: () async {
                      try {
                        final inputValue = _controller.text;
                        await contactBox!.add(inputValue);
                        Fluttertoast.showToast(msg: 'Added Succesfully');
                        _controller.clear();
                      } catch (e) {
                        Fluttertoast.showToast(msg: e.toString());
                      }
                    },
                    child: Text('Add Data')),
              ),
              Expanded(
                  child: ValueListenableBuilder(
                valueListenable: Hive.box('contact-box').listenable(),
                builder: ((context, value, child) {
                  return ListView.builder(
                    itemCount: contactBox!.keys.toList().length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(contactBox!.getAt(index)),
                        ),
                      );
                    },
                  );
                }),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
