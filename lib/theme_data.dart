import 'package:custom_theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ThemeClass{
  static ThemeData lightTheme = ThemeData(
    useMaterial3:true,
   
    //---------- light theme elevated button styles
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all( Size(double.infinity, 20.h)),
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) => lightElevatedBackgroundColor),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
          return RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.w));
        }),
        textStyle: MaterialStateProperty.resolveWith((states) =>  TextStyle(fontWeight: FontWeight.normal,fontSize: 11.sp)),
        foregroundColor: MaterialStateProperty.all<Color>(lightElevatedTextColor),//actual text color
      )
    ),
    //----------------------------------------------------------------------------------
     textTheme:  TextTheme(
      // Personnalisez le style du texte
        titleLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        color: lightTextColor,
      ),
      titleMedium: TextStyle(
        fontSize: 16.sp,
        color: lightTextColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 14.sp,
        color: lightTextColor,
      ),
       bodyMedium: TextStyle(
        fontSize: 12.sp,
        color: lightTextColor,
      ),
       bodySmall: TextStyle(
        fontSize: 11.sp,
        color: lightTextColor,
      ),
    ),
    // -------------------- appbar theme -----------------------------------------------------
     appBarTheme: AppBarTheme(
      // Personnalisez l'apparence de l'app Bar
      color: lightAppbarColor, 
     
      titleTextStyle:   TextStyle(
        fontSize: 16.sp,
        color: lightTextColor,
      ),
    ),

    scaffoldBackgroundColor: lightBackgroundColor
  );


  //========================================   dark theme  ================================================================
    static ThemeData darkTheme = ThemeData(
    useMaterial3:true,
   
    //---------- dark theme elevated button styles
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all( Size(double.infinity, 20.h)),
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) => darkElevatedBackgroundColor),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
          return RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.w));
        }),
        textStyle: MaterialStateProperty.resolveWith((states) =>  TextStyle(fontWeight: FontWeight.normal,fontSize: 11.sp)),
        foregroundColor: MaterialStateProperty.all<Color>(darkElevatedTextColor),//actual text color
      )
    ),
   //--------------------------------------Text widget--------------------------------------------
     textTheme:  TextTheme(
      // Personnalisez le style du texte
       titleLarge: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        color: darkTextColor,
      ),
      titleMedium: TextStyle(
        fontSize: 16.sp,
        color: darkTextColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 14.sp,
        color: darkTextColor,
      ),
       bodyMedium: TextStyle(
        fontSize: 12.sp,
        color: darkTextColor,
      ),
       bodySmall: TextStyle(
        fontSize: 11.sp,
        color: darkTextColor,
      ),
    ), 
 // -------------------- appbar theme -----------------------------------------------------
     appBarTheme: AppBarTheme(
      // Personnalisez l'apparence de l'app Bar
      color: darkAppbarColor, 
     
      titleTextStyle:   TextStyle(
        fontSize: 16.sp,
        color: darkTextColor,
      ),
    ),
    scaffoldBackgroundColor: darkBackgroundColor,

  );
}