import 'package:flutter/material.dart';
import 'package:space/core/App_%20planets/planets_list.dart';
import 'package:space/core/App_colors/App%20_color.dart';
import 'package:space/core/App_photo/App_photo.dart';
import 'package:space/core/screens/details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
final PageController _controller = PageController( viewportFraction: 1.0);
  int index=0;

void dispose(){
  _controller.dispose();
  super.dispose();
}
void _go(int newIndex) {
  _controller.animateToPage(
    newIndex,
    duration: const Duration(milliseconds: 400),
    curve: Curves.easeInOut,
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor:Color(0xFF000000),
      body: Stack(
        children: [
          Image.asset(AppPhoto.constPhoto),
          Center(child:
          Column(
           //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40,),
              Text('Explore',style: TextStyle(
                color: AppColor.withe,
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),),
              SizedBox(height: 100,),Padding(padding:
              EdgeInsets.symmetric(vertical: 0,horizontal: 20),
                  child:
              Text('Which planet                                   '
                  'would you like to explore?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: AppColor.withe
              ),))
            ],
          ),

          ),
        PageView.builder(controller: _controller,
          itemCount: plane.length,
          onPageChanged: (i) =>setState(()=> index=i) ,
          itemBuilder: (context, i) => Image.asset(plane[i].images),
          ),Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 120, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _arrowButton(Icons.arrow_back, () {
                    if (index > 0) _go(index - 1);
                  }),
                  Text(
                    plane[index].name,
                    style: const TextStyle(
                      color: AppColor.withe,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  _arrowButton(Icons.arrow_forward, () {
                    if (index < plane.length - 1) _go(index + 1);
                  }),
                ],
              ),
            ),
          ), Align(alignment:
          Alignment.bottomCenter,
            child: Padding(padding: EdgeInsets.only(bottom: 20,right: 16,left: 16)
              ,child: SizedBox(width: double.infinity,
                height: 60,
                child: ElevatedButton(onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(planets: plane[index]),
                  ),
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
                      Text('Explore ${plane[index].name}',textAlign: TextAlign.start
                        ,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20
                          ,color: AppColor.withe,

                        ),),Icon(Icons.arrow_forward_sharp,
                        color: AppColor.withe,
                        size: 25,)],),

                ),
              ),
            ),

          ),


        ]
    ),
    );
  }
Widget _arrowButton(IconData icon, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 43,
      height: 43,
      decoration: const BoxDecoration(
        color: Color(0xFFEF4444),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.white, weight: 15),
    ),
  );
}
}
