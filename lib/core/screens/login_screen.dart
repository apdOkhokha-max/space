import 'package:flutter/material.dart';
import 'package:space/core/App_colors/App%20_color.dart';
import 'package:space/core/App_photo/App_photo.dart';
import 'package:space/core/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xFF000000),

      body:
      Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              AppPhoto.loginPhoto,
              fit: BoxFit.cover,
            ),
          ),
          Center(
              child: Text(
                'Explore The Universe',
              //  textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColor.withe,
                  fontWeight: FontWeight.bold,
                  fontSize:78 ,
                ),
              ),
            ),
          Align(alignment:
            Alignment.bottomCenter,
            child: Padding(padding: EdgeInsets.only(bottom: 20,right: 16,left: 16)
                ,child: SizedBox(width: double.infinity,
                  height: 60,
                  child: ElevatedButton(onPressed: (){Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),(route) =>false ,
                  );

    },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.red,

    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30)
    ),

    ),
                    child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Explore',textAlign: TextAlign.start
                      ,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20
                        ,color: AppColor.withe,

                    ),),Icon(Icons.arrow_forward_sharp,
                        color: AppColor.withe,
                        size: 25,)],),

                  ),
                ),
            ),

          ),

        ],



    ),






    );
  }
}
