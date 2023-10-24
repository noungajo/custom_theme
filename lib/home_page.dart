
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,),
        
      ),
      body: SingleChildScrollView(
        child: Container(
          padding:  EdgeInsets.all(5.w),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            
              Text("Je suis le meilleur",style: theme.titleMedium,),
              Text("Je suis le meilleur",style: theme.bodyLarge,),
              Text("Je suis le meilleur",style: theme.bodyMedium,),
              Text("Je suis le meilleur",style: theme.bodySmall,),
              ElevatedButton(
              onPressed: (){}, 
              child: const Text("Je suis le meilleur",)),
              TextButton(onPressed: (){}, child:  Text("Je suis le meilleur",style: theme.bodySmall,))

            ],
          ),
        ),
      ),
    );
  }
}
