// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:rahul_test_file/counter_and_navigate/cubit/counter_cubit.dart';


// class CounterView extends StatelessWidget {
//   const CounterView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;
//     return Scaffold(
//       body: Center(
//         child: BlocBuilder<CounterCubit, int>(
//           builder: (context, state) {
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 state == 10 || state == -10
//                     ? ElevatedButton(
//                         onPressed: () =>
//                             context.read<CounterCubit>().resetCount(),
//                         child: Text("Reset"))
//                     : Container(),
//                 Text('$state', style: textTheme.displayMedium),
//               ],
//             );
//           },
//         ),
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: <Widget>[
//           FloatingActionButton(
//             key: const Key('counterView_increment_floatingActionButton'),
//             child: const Icon(Icons.add),
//             onPressed: () => context.read<CounterCubit>().increment(),
//           ),
//           const SizedBox(height: 8),
//           FloatingActionButton(
//             key: const Key('counterView_decrement_floatingActionButton'),
//             child: const Icon(Icons.remove),
//             onPressed: () => context.read<CounterCubit>().decrement(),
//           ),
//         ],
//       ),
//     );
//   }
// }
