import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  List<String> tags = [];

  List<PopupMenuItem> makeTags() {
    List<PopupMenuItem> textTags = [];

    for (int i = 0; i < tags.length; i++) {
      textTags.add(PopupMenuItem(
        child: Text(tags[i]),
      ));
    }

    return textTags;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fast Notes'),
      ),
      body: const Center(),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add a note',
        child: const Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  scrollable: true,
                  content: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Title',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  actions: [
                    PopupMenuButton(
                      color: const Color.fromARGB(255, 238, 238, 238),
                      padding: const EdgeInsets.all(10),
                      position: PopupMenuPosition.under,
                      tooltip: 'Tag',
                      icon: const Icon(Icons.tag),
                      itemBuilder: (BuildContext context) {
                        List<PopupMenuItem<dynamic>> items = [];

                        items.add(PopupMenuItem(child: TextFormField(
                          onFieldSubmitted: (value) {
                            tags.add(value);
                          },
                        )));
                        items.addAll(makeTags());
                        return items;
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Add'),
                    ),
                  ],
                );
              });
        },
      ),
    );
  }
}
