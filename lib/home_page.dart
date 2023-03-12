
import 'package:flutter/material.dart';
import 'package:responsive_widget/responsive_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          padding: EdgeInsets.all(20),
          child: ResponsiveWidget(
            mobile: Column(
              children: [
                buildBannerSlider(),
                Expanded(child: buildIntroText())
              ],
            ) ,
            tablet: Row(
              children: [
                buildBannerSlider(),
                SizedBox(width: 20,),
                Expanded(child: buildIntroText())
              ],
            ),
            web: Container(),
          ),
        ),
      ),
    );
  }



  buildBannerSlider() {
    return Container(
      width: 320,
      height: 180,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Colors.red,
              Colors.pink
            ],
        ),
        borderRadius: BorderRadius.circular(12)
      ),
    );
  }

  buildIntroText() {
    return
         Text("Hi tjere ! \n\n kljsldf lkjkwd lijqjkerwkjpo ijkjker \nlkdf"
             ";wdf");
  }
}
