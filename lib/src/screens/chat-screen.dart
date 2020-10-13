import 'package:flutter/material.dart';
import 'package:startup_namer/src/constants/app.constants.dart';

class ChartScreen extends StatefulWidget {
  @override
  _ChartScreenState createState() => _ChartScreenState();
}

@immutable
class CounterDisplay extends StatelessWidget {
  const CounterDisplay(this.count);

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text('$count');
  }
}

class _ChartScreenState extends State<ChartScreen> {
  final TextEditingController _textController = TextEditingController();
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    print('counter is: $_counter');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(APP_NAME),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: _incrementCounter,
        ),
        actions: const <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      body: _buildTextComposer(
        CounterDisplay(
          _counter,
        ),
      ),
    );
  }

  Widget _buildTextComposer(Widget counter) {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Column(
        children: <Widget>[
          Flexible(
            child: Container(
                child: GestureDetector(
              onTap: _incrementCounter,
            )),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 5.0),
            child: counter,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 5.0),
            padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
            decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      width: 1.0, color: Theme.of(context).accentColor)),
            ),
            child: Row(
              children: <Widget>[
                // Expanded?
                Flexible(
                  child: TextField(
                    controller: _textController,
                    onSubmitted: _handleSubmitted,
                    decoration: const InputDecoration.collapsed(
                      hintText: 'Send a message',
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () => _handleSubmitted(_textController.text),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
  }
}
