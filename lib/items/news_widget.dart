import 'package:flutter/material.dart';
import 'package:news/api_manager.dart';
import 'package:news/items/news_item.dart';
import 'package:news/model/NewsResponse.dart';

class NewsWidget extends StatelessWidget {
   NewsWidget({super.key,required this.sourceId});
  String sourceId;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse>(future:ApiManager.getNews(sourceId), builder: (context,snapshot){
      if (snapshot.connectionState==ConnectionState.waiting){
        return Center(child: CircularProgressIndicator());
      }
      if(snapshot.hasError){
        return Center(child: Text("Something Went wrong",style: Theme.of(context).textTheme.bodyLarge,));
      }
      return ListView.separated(itemBuilder: (context,index){
        return NewsItem(articles:  snapshot.data!.articles![index]);
      },itemCount: snapshot.data?.articles?.length??0,separatorBuilder: (context,index)=>SizedBox(height: 16,),);
    });
  }
}
