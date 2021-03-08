import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:provider_key/provider_key.dart';

const _number1Key = ChangeNotifierProviderKey<Number1Notifier>();
const _number2Key = ChangeNotifierProviderKey<Number2Notifier>();
const _result2Key = ChangeNotifierProxyProviderKey2.build(
    dependKey1: _number1Key,
    dependKey2: _number2Key,
    selfType: ProviderType<ResultNumberNotifier>());

class CalculatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        _number1Key.provider((context) => Number1Notifier()),
        _number2Key.provider((context) => Number2Notifier()),
        _result2Key.provider((context) => ResultNumberNotifier(),
            (context, number1, number2, previous) {
          if (previous == null) {
            return ResultNumberNotifier()
              ..setNumbers(number1.number, number2.number);
          }
          return previous..setNumbers(number1.number, number2.number);
        }),
      ],
      child: PageContent(),
    );
  }
}

class PageContent extends StatelessWidget {
  final TextEditingController number1Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('number1'),
            Container(height: 4),
            Container(
              height: 50,
              child: ListView.builder(
                itemBuilder: _list1,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Container(height: 8),
            Text('number2'),
            Container(height: 4),
            Container(
              height: 50,
              child: ListView.builder(
                itemBuilder: _list2,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Container(height: 32),
            Text('_result2Key.consumer'),
            Container(
              child: _result2Key.consumer((context, value, child) {
                return Text(
                  'result:${value.result} \n changeTime:${DateFormat('yyyy-MM-dd hh:mm:ss').format(value.changeTime)}',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.orange),
                );
              }),
            ),
            Container(height: 32),
            Text('ProviderKey2.build.consumer'),
            ProviderKey2.build(_number1Key, _number2Key).consumer(
              (context, value1, value2, child) {
                return Text(
                  'result:${value1.number + value2.number}',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.orange),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _list1(BuildContext context, int index) {
    int number = index;
    return _number1Key.selector<bool>(builder: (context, checked, child) {
      return TextButton(
        onPressed: () {
          _number1Key.read(context).number = number;
        },
        style: ButtonStyle(
            backgroundColor: checked
                ? MaterialStateProperty.all(Colors.orangeAccent)
                : null),
        child: Text('$number'),
      );
    }, selector: (context, value) {
      return value.number == number;
    });
  }

  Widget _list2(BuildContext context, int index) {
    int number = index;
    return _number2Key.selector<bool>(builder: (context, checked, child) {
      return TextButton(
        onPressed: () {
          _number2Key.read(context).number = number;
        },
        style: ButtonStyle(
            backgroundColor: checked
                ? MaterialStateProperty.all(Colors.orangeAccent)
                : null),
        child: Text('$number'),
      );
    }, selector: (context, value) {
      return value.number == number;
    });
  }
}

class Number1Notifier extends ChangeNotifier {
  int _number = 0;

  set number(int number) {
    _number = number;
    notifyListeners();
  }

  int get number => _number;
}

class Number2Notifier extends ChangeNotifier {
  int _number = 0;

  set number(int number) {
    _number = number;
    notifyListeners();
  }

  int get number => _number;
}

class ResultNumberNotifier with ChangeNotifier {
  int result = 0;
  DateTime changeTime = DateTime.now();

  void setNumbers(int number, int number2) {
    this.result = number + number2;
    this.changeTime = DateTime.now();
    notifyListeners();
  }
}
