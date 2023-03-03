import 'package:flutter/material.dart';

class AnimationList extends StatefulWidget {
  const AnimationList({super.key});

  @override
  State<AnimationList> createState() => _AnimationListState();
}

class _AnimationListState extends State<AnimationList> {
  /// Will used to access the Animated list
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  final List<String> _items = [];
  int counter = 0;

  void deleteItem(int index) {
    listKey.currentState!.removeItem(index, (_, animation) {
      return SizeTransition(
        sizeFactor: animation,
        child: const Card(
          margin: EdgeInsets.all(10),
          elevation: 10,
          color: Colors.red,
          child: ListTile(
            contentPadding: EdgeInsets.all(15),
            title: Text("Deleted", style: TextStyle(fontSize: 24,color: Colors.white)),
          ),
        ),
      );
      ;
    }, duration: const Duration(seconds: 1));

    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Map'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),

      body: AnimatedList(
          key: listKey,
          initialItemCount: 0,
          padding: const EdgeInsets.all(10),
          itemBuilder: (BuildContext context, int index,
                  Animation<double> animation) =>
              SizeTransition(
                key: UniqueKey(),
                sizeFactor: animation,
                child: Card(
                  color: Colors.purple,
                  margin: const EdgeInsets.all(15),
                  elevation: 10,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(15),
                    title: Text(_items[index],
                        style:
                            const TextStyle(fontSize: 24, color: Colors.white)),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.white),
                      onPressed: () => deleteItem(index),
                    ),
                  ),
                ),
              )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          _items.insert(0, "Item $counter");
          listKey.currentState!
              .insertItem(0, duration: const Duration(seconds: 1));
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.add),
      ),
    );
  }
}
