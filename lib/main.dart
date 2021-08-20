import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Display User input'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final fk = GlobalKey<FormState>();
var name ='';
TextEditingController nameCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
      
        title: Text(widget.title),
        
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
      ),

      body: Form(
        key: fk,
        child: Center(
          
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 TextFormField(
                   textCapitalization: TextCapitalization.sentences,
                   controller: nameCtrl,
                   decoration: InputDecoration(hintText: 'Enter your name',
                   border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                   ),
                  
                   onFieldSubmitted: (val){
                      print(nameCtrl);
                     setState(() {
                       name = val;
                     });
                   },
                 ),
                 SizedBox(height: 20,),
                 Visibility(
                   visible: name.isNotEmpty,
                   child: Text('Your name is: $name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
                 SizedBox(height: 20,),
                 Text('HNG', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                 SizedBox(height: 10,),
                 Image.asset('assets/images/Hoetls.ng logo.png',scale: 2.2,),
                 SizedBox(height: 20,),
                 Text('Website: https://hotels.ng/'),
                 SizedBox(height: 20,),
                 Text('Zuri', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                 SizedBox(height: 10,),
                 Image.asset('assets/images/zuri.png'),
                 SizedBox(height: 10,),
                 Text('Website: https://training.zuri.team/'),
                 SizedBox(height: 20,),
                 Text('I4g', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                 SizedBox(height: 10,),
                 Image.asset('assets/images/I4G-Logo-Color-Cropped.png',scale: 15,),
                 SizedBox(height: 10,),
                 Text('Website: https://ingressive.org/')
                
                ],
              ),
            ),
          ),
        ),
      ),
      
    );
  }
}
