import 'package:flutter/material.dart';
import 'package:laravel_echo/laravel_echo.dart';
import 'package:pusher_client/pusher_client.dart';
import 'package:web_socket_channel/io.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();

    final channel = IOWebSocketChannel.connect('wss://10.0.2.2:6001',
        headers: {
      'appKey': '123',
    });
    // const String PUSHER_KEY = '12345';

    channel.stream.listen((event) {
      print("event");

    });
    const String PUSHER_CLUSTER = 'mt1';

//     PusherOptions options = PusherOptions(
//         // wsPort:6001,
//         wssPort:6001,
//         encrypted:false,
//         host:'10.0.2.2',
//       // cluster: PUSHER_CLUSTER,
//       // auth: PusherAuth(
//       //   AUTH_URL,
//       //   headers: {
//       //     'Authorization': 'Bearer $BEARER_TOKEN',
//       //   },
//       // ),
//     );
//
// // Create pusher client
//   PusherClient pusherClient = PusherClient(
//     PUSHER_KEY,
//     options,
//     autoConnect: false,
//     enableLogging: true,
//   );
//
// // Create echo instance
//   Echo echo = new Echo(
//     broadcaster: EchoBroadcasterType.Pusher,
//     client: pusherClient,
//   );
//
// // Listening public channel
//   echo.channel('public-home').listen('message', (e) {
//     print(e);
//   });
//
// // Accessing pusher instance
//   echo.connector.pusher.onConnectionStateChange((state) {
//     print(state!.currentState.toString());
//   });

}

  @override
  Widget build(BuildContext context) {
    
    
    
    
    
    
    return Scaffold(
      appBar: AppBar(
        
        
        title: Text(widget.title),
      ),
      body: Center(
        
        
        child: Column(
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),

          ],
        ),
      ),

    );
  }
}
