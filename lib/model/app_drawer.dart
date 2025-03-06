import 'package:flutter/material.dart';
import 'package:news/provider/my%20_provider.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final myProvider=Provider.of<MyProvider>(context);
    return Container(
      color: Color(0xff171717),
      width: MediaQuery.of(context).size.width*0.8,
      child: Column(children: [
        Container(
          alignment: Alignment.center,
            color: Colors.white,
            height: 166,
            child: Text("News App",style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 24,color: Color(0xff171717)),)),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
          children: [
            Row(children: [
              Image(image: AssetImage("assets/images/home.png")),
              SizedBox(width: 5,),
              Text("Go To Home",style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700,color: Colors.white),),
            ],),
            SizedBox(height:24,),
            Divider(thickness: 1,color: Colors.white,),
            Row(children: [
              Image(image: AssetImage("assets/images/theme.png")),
              SizedBox(width: 5,),
              Text("Theme",style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700,color: Colors.white),),
            ],),
            SizedBox(height: 8,),

            Row(
              children: [
                Expanded(
                  child: Container(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        myProvider.isDarkMode ? "Dark" : "Light",
                        style:Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),
                      ),
                      DropdownButton<String>(
                        onChanged: (String? newValue){
                          if (newValue != null) {
                            myProvider.toggleTheme(newValue == "Dark");
                          }
                        },
                        items: [
                          DropdownMenuItem(
                            value: "Light",
                              child: Text("Light",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),)),
                          DropdownMenuItem(
                              value: "Dark",
                              child: Text("Dark",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),)),
                        ],
                        icon: const Icon(Icons.arrow_drop_down,color: Colors.white,),
                        dropdownColor: Color(0xff171717),
                        underline: Container(),

                      ),
                    ],
                  ),),
                ),
              ],
            ),
            SizedBox(height: 24,),
            Divider(thickness: 1,color: Colors.white,),
            SizedBox(height: 24,),
            Row(children: [
              Image(image: AssetImage("assets/images/language.png")),
              SizedBox(width: 5,),
              Text("Language",style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700,color: Colors.white),),
            ],),




          ],
                  ),
        )

      ],),
    );
  }
}
