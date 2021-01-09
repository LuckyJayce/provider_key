import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'provider_key.dart';

class ListenableProxyProviderKey<T, R extends Listenable>
    extends ProviderType<R> {
  const ListenableProxyProviderKey.build(
      {@required ProviderType<T> dependKey, @required ProviderType<R> selfType});

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

class ListenableProxyProviderKey2<T, T2, R extends Listenable>
    extends ProviderType<R> {
  const ListenableProxyProviderKey2.build(
      {@required ProviderType<T> dependKey1,
      @required ProviderType<T2> dependKey2,
      @required ProviderType<R> selfType});

  ListenableProxyProvider2<T, T2, R> provider(
    Create<R> create, {
    Key key,
    @required ProxyProviderBuilder2<T, T2, R> update,
    UpdateShouldNotify<R> updateShouldNotify,
    Dispose<R> dispose,
    bool lazy,
    TransitionBuilder builder,
    Widget child,
  }) {
    return ListenableProxyProvider2<T, T2, R>(
      key: key,
      create: create,
      update: update,
      dispose: dispose,
      lazy: lazy,
      builder: builder,
      child: child,
    );
  }
}

class ListenableProxyProviderKey3<T, T2, T3, R extends Listenable>
    extends ProviderType<R> {
  const ListenableProxyProviderKey3.build(
      {@required ProviderType<T> dependKey1,
      @required ProviderType<T2> dependKey2,
      @required ProviderType<T3> dependKey3,
      @required ProviderType<R> selfType});

  ListenableProxyProvider3<T, T2, T3, R> provider(
    Create<R> create, {
    Key key,
    @required ProxyProviderBuilder3<T, T2, T3, R> update,
    UpdateShouldNotify<R> updateShouldNotify,
    Dispose<R> dispose,
    bool lazy,
    TransitionBuilder builder,
    Widget child,
  }) {
    return ListenableProxyProvider3<T, T2, T3, R>(
      key: key,
      create: create,
      update: update,
      dispose: dispose,
      lazy: lazy,
      builder: builder,
      child: child,
    );
  }
}

class ListenableProxyProviderKey4<T, T2, T3, T4, R extends Listenable>
    extends ProviderType<R> {
  const ListenableProxyProviderKey4.build(
      {@required ProviderType<T> dependKey1,
      @required ProviderType<T2> dependKey2,
      @required ProviderType<T3> dependKey3,
      @required ProviderType<T4> dependKey4,
      @required ProviderType<R> selfType});

  ListenableProxyProvider4<T, T2, T3, T4, R> provider(
    Create<R> create, {
    Key key,
    @required ProxyProviderBuilder4<T, T2, T3, T4, R> update,
    UpdateShouldNotify<R> updateShouldNotify,
    Dispose<R> dispose,
    bool lazy,
    TransitionBuilder builder,
    Widget child,
  }) {
    return ListenableProxyProvider4<T, T2, T3, T4, R>(
      key: key,
      create: create,
      update: update,
      dispose: dispose,
      lazy: lazy,
      builder: builder,
      child: child,
    );
  }
}

class ListenableProxyProviderKey5<T, T2, T3, T4, T5, R extends Listenable>
    extends ProviderType<R> {
  const ListenableProxyProviderKey5.build(
      {@required ProviderType<T> dependKey1,
      @required ProviderType<T2> dependKey2,
      @required ProviderType<T3> dependKey3,
      @required ProviderType<T4> dependKey4,
      @required ProviderType<T5> dependKey5,
      @required ProviderType<R> selfType});

  ListenableProxyProvider5<T, T2, T3, T4, T5, R> provider(
    Create<R> create, {
    Key key,
    @required ProxyProviderBuilder5<T, T2, T3, T4, T5, R> update,
    UpdateShouldNotify<R> updateShouldNotify,
    Dispose<R> dispose,
    bool lazy,
    TransitionBuilder builder,
    Widget child,
  }) {
    return ListenableProxyProvider5<T, T2, T3, T4, T5, R>(
      key: key,
      create: create,
      update: update,
      dispose: dispose,
      lazy: lazy,
      builder: builder,
      child: child,
    );
  }
}

class ProxyProviderKey<T, R> extends ProviderType<R> {
  const ProxyProviderKey.build(
      {@required ProviderType<T> dependKey, @required ProviderType<R> selfType});

  ProxyProvider<T, R> provider(
    Create<R> create, {
    Key key,
    @required ProxyProviderBuilder<T, R> update,
    UpdateShouldNotify<R> updateShouldNotify,
    Dispose<R> dispose,
    bool lazy,
    TransitionBuilder builder,
    Widget child,
  }) {
    return ProxyProvider<T, R>(
      key: key,
      create: create,
      update: update,
      updateShouldNotify: updateShouldNotify,
      dispose: dispose,
      lazy: lazy,
      builder: builder,
      child: child,
    );
  }
}

class ProxyProviderKey2<T, T2, R> extends ProviderType<R> {
  const ProxyProviderKey2.build(
      {@required ProviderType<T> dependKey1,
      @required ProviderType<T2> dependKey2,
      @required ProviderType<R> selfType});

  ProxyProvider2<T, T2, R> provider(
    Create<R> create, {
    Key key,
    @required ProxyProviderBuilder2<T, T2, R> update,
    UpdateShouldNotify<R> updateShouldNotify,
    Dispose<R> dispose,
    bool lazy,
    TransitionBuilder builder,
    Widget child,
  }) {
    return ProxyProvider2<T, T2, R>(
      key: key,
      create: create,
      update: update,
      updateShouldNotify: updateShouldNotify,
      dispose: dispose,
      lazy: lazy,
      builder: builder,
      child: child,
    );
  }
}

class ProxyProviderKey3<T, T2, T3, R> extends ProviderType<R> {
  const ProxyProviderKey3.build(
      {@required ProviderType<T> dependKey1,
      @required ProviderType<T2> dependKey2,
      @required ProviderType<T3> dependKey3,
      @required ProviderType<R> selfType});

  ProxyProvider3<T, T2, T3, R> provider(
    Create<R> create, {
    Key key,
    @required ProxyProviderBuilder3<T, T2, T3, R> update,
    UpdateShouldNotify<R> updateShouldNotify,
    Dispose<R> dispose,
    bool lazy,
    TransitionBuilder builder,
    Widget child,
  }) {
    return ProxyProvider3<T, T2, T3, R>(
      key: key,
      create: create,
      update: update,
      updateShouldNotify: updateShouldNotify,
      dispose: dispose,
      lazy: lazy,
      builder: builder,
      child: child,
    );
  }
}

class ProxyProviderKey4<T, T2, T3, T4, R> extends ProviderType<R> {
  const ProxyProviderKey4.build(
      {@required ProviderType<T> dependKey1,
      @required ProviderType<T2> dependKey2,
      @required ProviderType<T3> dependKey3,
      @required ProviderType<T4> dependKey4,
      @required ProviderType<R> selfType});

  ProxyProvider4<T, T2, T3, T4, R> provider(
    Create<R> create, {
    Key key,
    @required ProxyProviderBuilder4<T, T2, T3, T4, R> update,
    UpdateShouldNotify<R> updateShouldNotify,
    Dispose<R> dispose,
    bool lazy,
    TransitionBuilder builder,
    Widget child,
  }) {
    return ProxyProvider4<T, T2, T3, T4, R>(
      key: key,
      create: create,
      update: update,
      updateShouldNotify: updateShouldNotify,
      dispose: dispose,
      lazy: lazy,
      builder: builder,
      child: child,
    );
  }
}

class ProxyProviderKey5<T, T2, T3, T4, T5, R> extends ProviderType<R> {
  const ProxyProviderKey5.build(
      {@required ProviderType<T> dependKey1,
      @required ProviderType<T2> dependKey2,
      @required ProviderType<T3> dependKey3,
      @required ProviderType<T4> dependKey4,
      @required ProviderType<T5> dependKey5,
      @required ProviderType<R> selfType});

  ProxyProvider5<T, T2, T3, T4, T5, R> provider(
    Create<R> create, {
    Key key,
    @required ProxyProviderBuilder5<T, T2, T3, T4, T5, R> update,
    UpdateShouldNotify<R> updateShouldNotify,
    Dispose<R> dispose,
    bool lazy,
    TransitionBuilder builder,
    Widget child,
  }) {
    return ProxyProvider5<T, T2, T3, T4, T5, R>(
      key: key,
      create: create,
      update: update,
      updateShouldNotify: updateShouldNotify,
      dispose: dispose,
      lazy: lazy,
      builder: builder,
      child: child,
    );
  }
}

class ChangeNotifierProxyProviderKey<T, R extends ChangeNotifier>
    extends ProviderType<R> {
  const ChangeNotifierProxyProviderKey.build(
      {@required ProviderType<T> dependKey, @required ProviderType<R> selfType});

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
    extends ProviderType<R> {
  const ChangeNotifierProxyProviderKey2.build(
      {@required ProviderType<T> dependKey1,
      @required ProviderType<T2> dependKey2,
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

class ChangeNotifierProxyProviderKey3<T, T2, T3, R extends ChangeNotifier>
    extends ProviderType<R> {
  const ChangeNotifierProxyProviderKey3.build(
      {@required ProviderType<T> dependKey1,
      @required ProviderType<T2> dependKey2,
      @required ProviderType<T3> dependKey3,
      @required ProviderType<R> selfType});

  ChangeNotifierProxyProvider3<T, T2, T3, R> provider(
    Create<R> create,
    ProxyProviderBuilder3<T, T2, T3, R> update, {
    Key key,
    bool lazy,
    TransitionBuilder builder,
    Widget child,
  }) {
    return ChangeNotifierProxyProvider3<T, T2, T3, R>(
      key: key,
      create: create,
      update: update,
      lazy: lazy,
      builder: builder,
      child: child,
    );
  }
}

class ChangeNotifierProxyProviderKey4<T, T2, T3, T4, R extends ChangeNotifier>
    extends ProviderType<R> {
  const ChangeNotifierProxyProviderKey4.build(
      {@required ProviderType<T> dependKey1,
      @required ProviderType<T2> dependKey2,
      @required ProviderType<T3> dependKey3,
      @required ProviderType<T4> dependKey4,
      @required ProviderType<R> selfType});

  ChangeNotifierProxyProvider4<T, T2, T3, T4, R> provider(
    Create<R> create,
    ProxyProviderBuilder4<T, T2, T3, T4, R> update, {
    Key key,
    bool lazy,
    TransitionBuilder builder,
    Widget child,
  }) {
    return ChangeNotifierProxyProvider4<T, T2, T3, T4, R>(
      key: key,
      create: create,
      update: update,
      lazy: lazy,
      builder: builder,
      child: child,
    );
  }
}

class ChangeNotifierProxyProviderKey5<T, T2, T3, T4, T5,
    R extends ChangeNotifier> extends ProviderType<R> {
  const ChangeNotifierProxyProviderKey5.build(
      {@required ProviderType<T> dependKey1,
      @required ProviderType<T2> dependKey2,
      @required ProviderType<T3> dependKey3,
      @required ProviderType<T4> dependKey4,
      @required ProviderType<T4> dependKey5,
      @required ProviderType<R> selfType});

  ChangeNotifierProxyProvider5<T, T2, T3, T4, T5, R> provider(
    Create<R> create,
    ProxyProviderBuilder5<T, T2, T3, T4, T5, R> update, {
    Key key,
    bool lazy,
    TransitionBuilder builder,
    Widget child,
  }) {
    return ChangeNotifierProxyProvider5<T, T2, T3, T4, T5, R>(
      key: key,
      create: create,
      update: update,
      lazy: lazy,
      builder: builder,
      child: child,
    );
  }
}
