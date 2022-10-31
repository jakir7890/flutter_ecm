import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AddScreen extends StatefulWidget {
  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {

// @override
// void initState() {
//   super.initState();
//   _updateController =  contactBox!.getAt(widget.);
// }


  TextEditingController _controller = TextEditingController();
  TextEditingController _updateController = TextEditingController(text: 'Hello');

  Box? contactBox;
 


  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus!.unfocus();
          },
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  controller: _controller,
                  decoration: InputDecoration(
                    
                      hintText: 'Enter your Data',
                      border: OutlineInputBorder()),
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
                            trailing: SizedBox(
                              width: 100,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  IconButton(
                                      tooltip: 'Edit your data',
                                      onPressed: () async {
                                        showDialog(
                                            context: context,
                                            builder: (_) {
                                              return Dialog(
                                                child: SizedBox(
                                                  height: 200,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      children: [
                                                        TextFormField(
                                                         
                                                          controller:
                                                              _updateController,
                                                          decoration: InputDecoration(
                                                              border: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10))),
                                                        ),
                                                        SizedBox(
                                                          width: 200,
                                                          child: ElevatedButton(
                                                              onPressed:
                                                                  () async {
                                                                final updateData =
                                                                    _updateController
                                                                        .text;
                                                                contactBox!.putAt(
                                                                    index,
                                                                    updateData);
                                                                _updateController
                                                                    .clear();
                                                                Navigator.pop(
                                                                    context);
                                                                Fluttertoast
                                                                    .showToast(
                                                                        msg:
                                                                            "Updated Data Successfully");
                                                              },
                                                              child: Text(
                                                                  'Upadate Data')),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            });
                                      },
                                      icon: Icon(
                                        Icons.edit,
                                        color: Colors.blue,
                                        size: 20,
                                      )),
                                  IconButton(
                                      color: Colors.red,
                                      tooltip: 'Edit your data',
                                      onPressed: () async {
                                        await contactBox!.deleteAt(index);
                                        Fluttertoast.showToast(
                                            msg: 'Deleted Successfully');
                                      },
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.redAccent,
                                        size: 20,
                                      ))
                                ],
                              ),
                            ),
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
      ),
    );
  }
}
