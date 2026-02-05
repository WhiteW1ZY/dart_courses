class Actions {}

class IncrementAction extends Actions {
  final int amount;
  IncrementAction(this.amount);
}

class DecrementAction extends Actions {
  final int amount;
  DecrementAction(this.amount);
}

class CounterReducer {
  Counter counterReducer(Counter state, Actions action) {
    if (action is IncrementAction) {
      return state.copyWith(
        amount: state.amount + action.amount,
        actions: [...state.actions, "Incremented: +${action.amount}"],
      );
    } else if (action is DecrementAction) {
      return Counter(
        amount: state.amount - action.amount,
        actions: [...state.actions, "Decremented: -${action.amount}"],
      );
    }

    return state;
  }
}

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    counter: CounterReducer().counterReducer(state.counter, action),
  );
}

class Counter {
  final List<String> actions;
  final int amount;

  const Counter({required this.actions, required this.amount});

  Counter copyWith({List<String>? actions, int? amount}) {
    return Counter(
      actions: actions ?? this.actions,
      amount: amount ?? this.amount,
    );
  }
}

class AppState {
  final Counter counter;
  const AppState({required this.counter});

  AppState copyWith({Counter? counter}) =>
      AppState(counter: counter ?? this.counter);

  static AppState initialState() {
    return AppState(counter: Counter(actions: [], amount: 0));
  }
}
