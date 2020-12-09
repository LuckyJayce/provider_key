import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class ProviderType<T> {
  const ProviderType();
}

abstract class ProviderKey<T> extends ProviderType<T> {
  const ProviderKey();

  Consumer<T> consumer(
    ConsumerBuilder<T> builder, {
    Key key,
    Widget child,
  }) {
    return Consumer(builder: builder);
  }

  Selector<T, S> selector<S>({
    Key key,
    @required ValueWidgetBuilder<S> builder,
    @required S Function(BuildContext context, T value) selector,
    ShouldRebuild<S> shouldRebuild,
    Widget child,
  }) {
    return Selector<T, S>(
        key: key,
        builder: builder,
        selector: selector,
        shouldRebuild: shouldRebuild,
        child: child);
  }

  T read(BuildContext context) {
    return Provider.of<T>(context, listen: false);
  }

  T watch(BuildContext context) {
    return Provider.of<T>(context, listen: true);
  }
}

class ProviderKey2<T1, T2> {
  const ProviderKey2.build(ProviderKey<T1> key1, ProviderKey<T2> key2);

  Consumer2<T1, T2> consumer(
    Widget Function(BuildContext context, T1 value1, T2 value2, Widget child)
        builder, {
    Key key,
    Widget child,
  }) {
    return Consumer2<T1, T2>(
      key: key,
      builder: builder,
      child: child,
    );
  }

  Selector2<T1, T2, S> selector<S>({
    Key key,
    @required ValueWidgetBuilder<S> builder,
    @required S Function(BuildContext, T1, T2) selector,
    ShouldRebuild<S> shouldRebuild,
    Widget child,
  }) {
    return Selector2<T1, T2, S>(
      key: key,
      builder: builder,
      selector: selector,
      shouldRebuild: shouldRebuild,
      child: child,
    );
  }
}

class ProviderKey3<T1, T2, T3> {
  const ProviderKey3.build(
      ProviderKey<T1> key1, ProviderKey<T2> key2, ProviderKey<T3> key3);

  Consumer3<T1, T2, T3> consumer(
    Widget Function(
            BuildContext context, T1 value1, T2 value2, T3 value3, Widget child)
        builder, {
    Key key,
    Widget child,
  }) {
    return Consumer3<T1, T2, T3>(
      key: key,
      builder: builder,
      child: child,
    );
  }

  Selector3<T1, T2, T3, S> selector<S>({
    Key key,
    @required ValueWidgetBuilder<S> builder,
    @required S Function(BuildContext, T1, T2, T3) selector,
    ShouldRebuild<S> shouldRebuild,
    Widget child,
  }) {
    return Selector3<T1, T2, T3, S>(
      key: key,
      builder: builder,
      selector: selector,
      shouldRebuild: shouldRebuild,
      child: child,
    );
  }
}

class ListenableProviderKey<T extends Listenable> extends ProviderKey<T> {
  const ListenableProviderKey();

  ListenableProvider<T> provider(
    Create<T> create, {
    Key key,
    Dispose<T> dispose,
    bool lazy,
    TransitionBuilder builder,
    Widget child,
  }) {
    return ListenableProvider<T>(
      key: key,
      create: create,
      dispose: dispose,
      lazy: lazy,
      builder: builder,
      child: child,
    );
  }
}

class ChangeNotifierProviderKey<T extends ChangeNotifier>
    extends ProviderKey<T> {
  const ChangeNotifierProviderKey();

  ChangeNotifierProvider<T> provider(
    Create<T> create, {
    Key key,
    bool lazy,
    TransitionBuilder builder,
    Widget child,
  }) {
    return ChangeNotifierProvider<T>(
      key: key,
      create: create,
      lazy: lazy,
      builder: builder,
      child: child,
    );
  }
}

typedef ConsumerBuilder<T> = Widget Function(
    BuildContext context, T value, Widget child);

class InheritedProviderKey<T> extends ProviderKey<T> {
  const InheritedProviderKey();

  InheritedProvider<T> provider(
    Create<T> create, {
    Key key,
    T Function(BuildContext context, T value) update,
    UpdateShouldNotify<T> updateShouldNotify,
    void Function(T value) debugCheckInvalidValueType,
    StartListening<T> startListening,
    Dispose<T> dispose,
    TransitionBuilder builder,
    bool lazy,
    Widget child,
  }) {
    return InheritedProvider<T>(
      key: key,
      create: create,
      update: update,
      updateShouldNotify: updateShouldNotify,
      debugCheckInvalidValueType: debugCheckInvalidValueType,
      startListening: startListening,
      dispose: dispose,
      builder: builder,
      lazy: lazy,
      child: child,
    );
  }
}
