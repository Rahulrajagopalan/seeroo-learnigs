// import 'package:flutter/material.dart';
// import 'package:get_it/get_it.dart';

// // This is our global ServiceLocator
// GetIt getIt = GetIt.instance;

// void main() {
//   /// I use signalReady here only to show how to use it. In 99% of the cases
//   /// you don't need it. Just use registerSingletonAsync
//   getIt.registerSingleton<AppModel>(AppModelImplementation(),
//       signalsReady: true);

//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   // ignore: library_private_types_in_public_api
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   void initState() {
//     // Access the instance of the registered AppModel
//     // As we don't know for sure if AppModel is already ready we use isReady
//     getIt
//         .isReady<AppModel>()
//         .then((_) => getIt<AppModel>().addListener(update));
//     // Alternative
//     // getIt.getAsync<AppModel>().addListener(update);

//     super.initState();
//   }

//   @override
//   void dispose() {
//     getIt<AppModel>().removeListener(update);
//     super.dispose();
//   }

//   void update() => setState(() => {});

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: FutureBuilder(
//           future: getIt.allReady(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return Scaffold(
//                 appBar: AppBar(
//                   title: Text(widget.title),
//                 ),
//                 body: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       const Text(
//                         'You have pushed the button this many times:',
//                       ),
//                       Text(
//                         getIt<AppModel>().counter.toString(),
//                         style: Theme.of(context).textTheme.headlineMedium,
//                       ),
//                     ],
//                   ),
//                 ),
//                 floatingActionButton: FloatingActionButton(
//                   onPressed: getIt<AppModel>().incrementCounter,
//                   tooltip: 'Increment',
//                   child: const Icon(Icons.add),
//                 ),
//               );
//             } else {
//               return const Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text('Waiting for initialisation'),
//                   SizedBox(
//                     height: 16,
//                   ),
//                   CircularProgressIndicator(),
//                 ],
//               );
//             }
//           }),
//     );
//   }
// }

// /// To avoid errors added this///


// // Base class that holds state and notifies listeners of changes.
// class AppModel extends ChangeNotifier {
//   // Counter value
//   int _counter = 0;

//   // Getter for the counter
//   int get counter => _counter;

//   // Method to increment the counter and notify listeners
//   void incrementCounter() {
//     _counter++;
//     notifyListeners(); // Notifies all widgets listening to this model
//   }
// }

// // Concrete implementation of AppModel
// class AppModelImplementation extends AppModel {
//   // Nothing needs to be overridden, as we are using the same functionality.
// }


// ************************************************************ //

import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';

// Global instance of GetIt
final getIt = GetIt.instance;

void setupLocator() {
  // Registering the AppModel as a singleton
  getIt.registerSingleton<AppModel>(AppModel());
  getIt.registerFactory<AppModelSub>(
    () => AppModelSub(appModel: getIt<AppModel>()),
  );
}



class AppModel extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();  // Notify the UI to update
  }
}

class AppModelSub{
  final AppModel appModel;
  AppModelSub({required this.appModel});
  void increseCount(){
    appModel.incrementCounter();
  }
}


void main() {
  setupLocator(); // Setup service locator
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple GetIt App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Fetch the AppModel from GetIt
  final appModelSub = GetIt.instance<AppModelSub>();

  @override
  void initState() {
    super.initState();
    appModelSub.appModel.addListener(update);  // Listen to changes in the model
  }

  @override
  void dispose() {
    appModelSub.appModel.removeListener(update); // Clean up listener
    super.dispose();
  }

  void update() {
    setState(() {}); // Rebuild the widget when model notifies
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App with GetIt'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              appModelSub.appModel.counter.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: appModelSub.increseCount,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
