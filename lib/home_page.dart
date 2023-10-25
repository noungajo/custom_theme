
import 'package:custom_theme/colors.dart';
import 'package:custom_theme/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var isDarkNoContext = false;
  @override
  void initState() {
   var bridhtnessInit = SchedulerBinding.instance.platformDispatcher.platformBrightness;
   isDarkNoContext = bridhtnessInit == Brightness.dark;
    super.initState();
  }
 bool isDark(BuildContext context){
  var brightnessContext = MediaQuery.of(context).platformBrightness;
return brightnessContext ==  Brightness.dark;
  }
  @override
  Widget build(BuildContext context) {
    var themedata =false;
  setState(() {
    themedata = isDark( context);
  });
    var theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style: theme.titleLarge?.apply(fontSizeDelta: appBarTitle),),
        
      ),
      body: SingleChildScrollView(
        child: Container(
          padding:  EdgeInsets.all(paddingController),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            
              Text("Je suis le meilleur",style: theme.titleMedium?.apply(fontSizeDelta: mediumTitle),),
              Text("Je suis le meilleur",style: theme.bodyLarge?.apply(fontSizeDelta: bodyLarge)),
              Text("Je suis le meilleur",style: theme.bodyMedium?.apply(fontSizeDelta: bodyMedium),),
              Text("Je suis le meilleur",style: theme.bodySmall?.apply(fontSizeDelta: bodySmall),),
              SizedBox(
    width: double.infinity,
                child: ElevatedButton(
                   style:themedata?
       ElevatedButton.styleFrom(
backgroundColor: darkElevatedBackgroundColor,
      )
      : ElevatedButton.styleFrom(
backgroundColor: lightElevatedBackgroundColor,
      ),
                onPressed: (){}, 
                child:  Padding(
                  padding: EdgeInsets.all(paddingController),
                  child: Text("Je suis le meilleur",style: theme.bodySmall?.apply(fontSizeDelta: bodySmall),),
                )),
              ),
              TextButton(onPressed: (){}, child:   Text("Je suis le meilleur",style: theme.bodyMedium?.apply(fontSizeDelta: bodyMedium),)),
   SizedBox(
    width: double.infinity,
     child: ElevatedButton(
      style:themedata?
       ElevatedButton.styleFrom(
backgroundColor: darkElevatedBackgroundColor,
      )
      : ElevatedButton.styleFrom(
backgroundColor: lightElevatedBackgroundColor,
      ),
                onPressed: (){}, 
                child:Padding(
                  padding: EdgeInsets.all(paddingController),
                  child:   Text("Je suis le meilleur",style: theme.bodySmall?.apply(fontSizeDelta: bodySmall),),
                )),
   ),
            ],
          ),
        ),
      ),
    );
  }
}

