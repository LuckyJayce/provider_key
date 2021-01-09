import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class ProviderType<T> {
  const ProviderType();

  Consumer<T> consumer(
    ConsumerBuilder<T> builder, {
    Key key,
    Widget child,
  }) {
    return Consumer(
      builder: builder,
      key: key,
      child: child,
    );
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

class InheritedProviderKey<T> extends ProviderType<T> {
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

class ProviderKey<T> extends InheritedProviderKey<T> {
  const ProviderKey();
}

class ProviderKey2<T1, T2> {
  const ProviderKey2.build(ProviderType<T1> key1, ProviderType<T2> key2);

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
      ProviderType<T1> key1, ProviderType<T2> key2, ProviderType<T3> key3);

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

class ProviderKey4<T1, T2, T3, T4> {
  const ProviderKey4.build(ProviderType<T1> key1, ProviderType<T2> key2,
      ProviderType<T3> key3, ProviderType<T4> key4);

  Consumer4<T1, T2, T3, T4> consumer(
    Widget Function(BuildContext context, T1 value1, T2 value2, T3 value3,
            T4 value4, Widget child)
        builder, {
    Key key,
    Widget child,
  }) {
    return Consumer4<T1, T2, T3, T4>(
      key: key,
      builder: builder,
      child: child,
    );
  }

  Selector4<T1, T2, T3, T4, S> selector<S>({
    Key key,
    @required ValueWidgetBuilder<S> builder,
    @required S Function(BuildContext, T1, T2, T3, T4) selector,
    ShouldRebuild<S> shouldRebuild,
    Widget child,
  }) {
    return Selector4<T1, T2, T3, T4, S>(
      key: key,
      builder: builder,
      selector: selector,
      shouldRebuild: shouldRebuild,
      child: child,
    );
  }
}

class ProviderKey5<T1, T2, T3, T4, T5> {
  const ProviderKey5.build(ProviderType<T1> key1, ProviderType<T2> key2,
      ProviderType<T3> key3, ProviderType<T4> key4, ProviderType<T4> key5);

  Consumer5<T1, T2, T3, T4, T5> consumer(
    Widget Function(BuildContext context, T1 value1, T2 value2, T3 value3,
            T4 value4, T5 value5, Widget child)
        builder, {
    Key key,
    Widget child,
  }) {
    return Consumer5<T1, T2, T3, T4, T5>(
      key: key,
      builder: builder,
      child: child,
    );
  }

  Selector5<T1, T2, T3, T4, T5, S> selector<S>({
    Key key,
    @required ValueWidgetBuilder<S> builder,
    @required S Function(BuildContext, T1, T2, T3, T4, T5) selector,
    ShouldRebuild<S> shouldRebuild,
    Widget child,
  }) {
    return Selector5<T1, T2, T3, T4, T5, S>(
      key: key,
      builder: builder,
      selector: selector,
      shouldRebuild: shouldRebuild,
      child: child,
    );
  }
}

class FutureProviderKey<T> extends ProviderType<T> {
  const FutureProviderKey();

  FutureProvider<T> provider(
    Create<Future<T>> create, {
    Key key,
    T initialData,
    ErrorBuilder<T> catchError,
    UpdateShouldNotify<T> updateShouldNotify,
    bool lazy,
    TransitionBuilder builder,
    Widget child,
  }) {
    return FutureProvider<T>(
      key: key,
      create: create,
      initialData: initialData,
      catchError: catchError,
      updateShouldNotify: updateShouldNotify,
      lazy: lazy,
      builder: builder,
      child: child,
    );
  }
}

class StreamProviderKey<T> extends ProviderType<T> {
  const StreamProviderKey();

  StreamProvider<T> provider(
    Create<Stream<T>> create, {
    Key key,
    T initialData,
    ErrorBuilder<T> catchError,
    UpdateShouldNotify<T> updateShouldNotify,
    bool lazy,
    TransitionBuilder builder,
    Widget child,
  }) {
    return StreamProvider<T>(
      key: key,
      create: create,
      initialData: initialData,
      catchError: catchError,
      updateShouldNotify: updateShouldNotify,
      lazy: lazy,
      builder: builder,
      child: child,
    );
  }
}

class ListenableProviderKey<T extends Listenable> extends ProviderType<T> {
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
    extends ProviderType<T> {
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
