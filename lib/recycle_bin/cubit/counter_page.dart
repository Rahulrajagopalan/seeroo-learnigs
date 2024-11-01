// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:rahul_test_file/counter_and_navigate/cubit/counter_cubit.dart';
// import 'package:rahul_test_file/counter_and_navigate/view/counter_view.dart';


// class CounterPage extends StatelessWidget {
//   const CounterPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => CounterCubit(0),
//       child: BlocListener<CounterCubit, int>(
//         listener: (context, state) {
//           switch (state) {
//             case 5||-5:
//               showDialog(
//                   context: context,
//                   builder: (context) => const AlertDialog(
//                         content: Text("5 to reach 10"),
//                       ));
//               break;
//             case 9||-9:
//               showDialog(
//                   context: context,
//                   builder: (context) => const AlertDialog(
//                         content: Text("1 more to go"),
//                       ));
//               break;
//             case 10||-10:
//               showDialog(
//                   context: context,
//                   builder: (context) => AlertDialog(
//                         content: Text("Reached 10 You can reset now"),
//                       ));
//               break;
//             default:
//               null;
//           }
//         },
//         child: const CounterView(),
//       ),
//     );
//   }
// }
