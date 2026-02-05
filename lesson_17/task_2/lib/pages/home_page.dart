import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:task_2/provider/counter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = StoreProvider.of<AppState>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Redux Counter with History"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            StoreConnector<AppState, String>(
              converter: (store) => store.state.counter.amount.toString(),
              builder: (context, count) {
                return Text(
                  'Counter: $count',
                  style: const TextStyle(fontSize: 18),
                );
              },
            ),

            StoreConnector<AppState, String>(
              converter: (store) =>
                  store.state.counter.actions.length.toString(),
              builder: (context, length) {
                return Padding(
                  padding: const .symmetric(vertical: 5),
                  child: Text(
                    "Total Operations: $length",
                    style: const TextStyle(fontSize: 14),
                  ),
                );
              },
            ),

            const Divider(),

            Expanded(
              child: StoreConnector<AppState, List<String>>(
                converter: (store) => store.state.counter.actions,
                builder: (context, actions) {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: actions.length,
                      itemBuilder: (context, index) {
                        return ListTile(title: Text(actions[index]));
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: .end,
        children: [
          FloatingActionButton(
            onPressed: () => provider.dispatch(IncrementAction(1)),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () => provider.dispatch(DecrementAction(1)),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
