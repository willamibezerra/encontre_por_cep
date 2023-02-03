// import 'package:flutter/material.dart';
// import 'package:catcher/catcher.dart';

// main() {
//   /// STEP 1. Create catcher configuration.
//   /// Debug configuration with dialog report mode and console handler. It will show dialog and once user accepts it, error will be shown   /// in console.
//   CatcherOptions debugOptions =
//       CatcherOptions(DialogReportMode(), [ConsoleHandler()]);

//   /// Release configuration. Same as above, but once user accepts dialog, user will be prompted to send email with crash to support.
//   CatcherOptions releaseOptions = CatcherOptions(DialogReportMode(), [
//     EmailManualHandler(["willamibezerra035@gmail.com"])
//   ]);

//   /// STEP 2. Pass your root widget (MyApp) along with Catcher configuration:
//   Catcher(
//       rootWidget: MyApp(),
//       debugConfig: debugOptions,
//       releaseConfig: releaseOptions);
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       /// STEP 3. Add navigator key from Catcher. It will be used to navigate user to report page or to show dialog.
//       navigatorKey: Catcher.navigatorKey,
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Plugin example app'),
//           ),
//           body: ChildWidget()),
//     );
//   }
// }

// class ChildWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: TextButton(
//             child: Text("Generate error"), onPressed: () => generateError()));
//   }

//   generateError() async {
//     throw "Test exception";
//   }
// }
import 'package:encontre_por_cep/pages/home_page.dart';
import 'package:encontre_por_cep/state/cep_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CepController(),
        child: const MaterialApp(
          home: HomePage(),
        ));
  }
}
