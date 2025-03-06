import 'package:flutter/material.dart';
import 'package:news/api_manager.dart';
import 'package:news/items/news_widget.dart';
import 'package:news/model/SourcesResponse.dart';

class TapsSection extends StatefulWidget {
   TapsSection({super.key});

  @override
  State<TapsSection> createState() => _TapsSectionState();
}

class _TapsSectionState extends State<TapsSection> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourcesResponse>(future: ApiManager.getSources(),
        builder: (context,snapshot){
          if (snapshot.connectionState==ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          if(snapshot.hasError){
            return Center(child: Text("Something Went wrong",style: Theme.of(context).textTheme.titleLarge,));
          }
          var data =snapshot.data?.sources??[];
          return DefaultTabController(
            initialIndex: selectedIndex,
            length: data.length,
            child: Column(
              children: [
                TabBar(
                    onTap: (value) {
                      selectedIndex = value;
                      setState((){});

                    },
                    dividerColor: Colors.transparent,
                    indicatorColor: Theme.of(context).cardColor,
                    labelColor: Theme.of(context).cardColor,
                    labelStyle: Theme.of(context).textTheme.titleSmall,
                    isScrollable: true,
                    tabs: data.map((source)=>Tab(text: source.name,)).toList()),
                Expanded(
                  child: NewsWidget(sourceId: data[selectedIndex].id??""),
                )
              ],
            ),
          );
        });
  }
}
