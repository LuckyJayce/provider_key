import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'provider_key.dart';

class ListenableProxyProviderKey<T, R extends Listenable>
    extends ProviderKey<R> {
  const ListenableProxyProviderKey.build(
      {@required ProviderKey<T> dependKey, @required ProviderType<R> selfType});

  ListenableProxyProvider<T, R> provider(
    Create<R> create,
    ProxyProviderBuilder<T, R> update, {
    Key key,
    Dispose<R> dispose,
    bool lazy,
    TransitionBuilder builder,
    Widget child,
  }) {
    return ListenableProxyProvider<T, R>(
      create: create,
      update: update,
      key: key,
      dispose: dispose,
      lazy: lazy,
      builder: builder,
      child: child,
    );
  }
}

class ChangeNotifierProxyProviderKey<T, R extends ChangeNotifier>
    extends ProviderKey<R> {
  const ChangeNotifierProxyProviderKey.build(
      {@required ProviderKey<T> dependKey, @required ProviderType<R> selfType});

  ChangeNotifierProxyProvider<T, R> provider(
    Create<R> create,
    ProxyProviderBuilder<T, R> update, {
    Key key,
    bool lazy,
    TransitionBuilder builder,
    Widget child,
  }) {
    return ChangeNotifierProxyProvider<T, R>(
      key: key,
      create: create,
      update: update,
      lazy: lazy,
      builder: builder,
      child: child,
    );
  }
}

class ChangeNotifierProxyProviderKey2<T, T2, R extends ChangeNotifier>
    extends ProviderKey<R> {
  const ChangeNotifierProxyProviderKey2.build(
      {@required ProviderKey<T> dependKey1,
      @required ProviderKey<T> dependKey2,
      @required ProviderType<R> selfType});

  ChangeNotifierProxyProvider2<T, T2, R> provider(
    Create<R> create,
    ProxyProviderBuilder2<T, T2, R> update, {
    Key key,
    bool lazy,
    TransitionBuilder builder,
    Widget child,
  }) {
    return ChangeNotifierProxyProvider2<T, T2, R>(
      key: key,
      create: create,
      update: update,
      lazy: lazy,
      builder: builder,
      child: child,
    );
  }
}
