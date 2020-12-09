[TOC]

# ProviderKey主要功能

简化Provider写法

1. 简化类型声明，类型的泛型只需声明一次
2. 轻松查看provider的调用关系，使用find usages查看调用关系
3. 轻量，声明没任何字段的的ProviderKey常量 即可使用



# 导入方式 #
	  provider_key:
	    git:
	      url: git://github.com/LuckyJayce/provider_key.git



# 使用方法

```
//--this difine-------
const _counterKey = ChangeNotifierProviderKey<Counter>();

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         //--this provider-------
        _counterKey.provider((context) => Counter()),
      ],
      child: PageContent(),
    );
  }
}

class PageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Column(
          children:[
            Text('You have pushed the button this many times:'),
            //--this  consumer-------
            _counterKey.consumer(
              (context, counter, child) {
                return Text(
                  '${counter.count}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      floatingActionButton: FloatingActionButton(
        //--this read-------
        onPressed: () => _counterKey.read(context).increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Counter with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  void increment() {
    _count++;
    notifyListeners();
  }
}
```

## 1.声明常量ProviderKey  
	const _counterKey = ChangeNotifierProviderKey<Counter>();

## 2.注册Provider	
	MultiProvider(
	   providers: [
	     _counterKey.provider((context) => Counter()),
	   ],
	   child: PageContent(),
	)

## 3.监听数据变化和读取数据 ##    

#### <1> Consumer

```
_counterKey.consumer(
  (context, counter, child) {
    return Text(
      '${counter.count}',
      style: Theme.of(context).textTheme.headline4,
    );
  },
),
```

对应原先Provider的Consumer

#### <2> Selector

```
_counterKey.selector<bool>(builder: (context, result, child) {
  return Text('$result')
}, selector: (context, value) {
  return value.count % 2 == 0;
}),
```

对应原先Provider的Selector

#### <3> read 读取数据 

```
Counter conter = _counterKey.read(context);
```

对应Provider原先的写法

```
Counter conter = Provider.of<Counter>(context, listen: false);
//或者
Counter counter = context.read<Counter>();
```

#### <4> watch 数据变化刷新当前widget  

```
Counter conter = _counterKey.watch(context);
```

对应Provider原先的写法

```
Counter conter = Provider.of<Counter>(context);
//或者
Counter counter = context.watch<Counter>();
```



#### <5>Consumer2,Consumer3

Consumer2

```
const _number1Key = ChangeNotifierProviderKey<Number1Notifier>();
const _number2Key = ChangeNotifierProviderKey<Number2Notifier>();

//Consumer2
ProviderKey2.build(_number1Key, _number2Key).consumer(
  (context, value1, value2, child) {
    return Text(
      'result:${value1.number + value2.number}',
      style: Theme.of(context)
          .textTheme
          .headline6
          .copyWith(color: Colors.orange),
    );
  },
),
```

Consumer3

```
const _number1Key = ChangeNotifierProviderKey<Number1Notifier>();
const _number2Key = ChangeNotifierProviderKey<Number2Notifier>();
const _number3Key = ChangeNotifierProviderKey<Number3Notifier>();

ProviderKey3.build(_number1Key, _number2Key, _number3Key).consumer(
      (context, value1, value2, value3, child) {
    return Text(
      'result:${value1.number + value2.number + value3.number}',
      style: Theme
          .of(context)
          .textTheme
          .headline6
          .copyWith(color: Colors.orange),
    );
  },
)
```

## 4. Providers

#### <1> ProviderKey

 InheritedProvider => InheritedProvider**Key**

ListenableProvider => ListenableProvider**Key**

ChangeNotifierProvider =>  ChangeNotifierProvider**Key**

.....

#### <2> ProxyProviderKey

1. **ProxyProvider**

   ProxyProvider => ProxyProvider**Key**

   ProxyProvider2 => ProxyProvider**Key2**

   ProxyProvider3 => ProxyProvider**Key3**

   ProxyProvider4 => ProxyProvider**Key4**

   ProxyProvider5 => ProxyProvider**Key5**

2. **ChangeNotifierProxyProvider**

   ChangeNotifierProxyProvider => ChangeNotifierProxyProvider**Key**

   ChangeNotifierProxyProvider2 => ChangeNotifierProxyProvider**Key2**

   ChangeNotifierProxyProvider3 => ChangeNotifierProxyProvider**Key3**

   ChangeNotifierProxyProvider4 => ChangeNotifierProxyProvider**Key4**

   ChangeNotifierProxyProvider5 => ChangeNotifierProxyProvider**Key5**

示例：ChangeNotifierProxyProviderKey2 用法  ，详细代码查看[**calculator_page.dart**][https://github.com/LuckyJayce/provider_key/blob/master/example/lib/pages/demos/calculator_page.dart]

```
class Number1Notifier extends ChangeNotifier {
  int _number = 0;

  set number(int number) {
    _number = number;
    notifyListeners();
  }

  get number => _number;
}

class Number2Notifier extends ChangeNotifier {
  int _number = 0;

  set number(int number) {
    _number = number;
    notifyListeners();
  }

  get number => _number;
}

class ResultNumberNotifier with ChangeNotifier {
  int result = 0;
  DateTime changeTime;

  void setNumbers(int number, int number2) {
    this.result = number + number2;
    this.changeTime = DateTime.now();
    notifyListeners();
  }
}
```

定义常量ProviderKey

```
const _number1Key = ChangeNotifierProviderKey<Number1Notifier>();
const _number2Key = ChangeNotifierProviderKey<Number2Notifier>();
const _result2Key = ChangeNotifierProxyProviderKey2.build(
    dependKey1: _number1Key,
    dependKey2: _number2Key,
    selfType: ProviderType<ResultNumberNotifier>());
```

provider()

```
MultiProvider(
  providers: [
    _number1Key.provider((context) => Number1Notifier()),
    _number2Key.provider((context) => Number2Notifier()),
    _result2Key.provider(
        (context) => ResultNumberNotifier(),
        (context, number1, number2, previous) =>
            previous..setNumbers(number1.number, number2.number)),
  ],
  child: PageContent(),
);
```

consumer()

```
Container(
  child: _result2Key.consumer((context, value, child) {
    return Text(
      'result:${value.result} \n changeTime:${DateFormat('yyyy-MM-dd hh:mm:ss').format(value.changeTime)}',
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .headline6
          .copyWith(color: Colors.orange),
    );
  }),
),
```