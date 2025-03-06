import 'package:flutter/material.dart';
import 'package:news/model/NewsResponse.dart';

class NewsItem extends StatelessWidget {
   NewsItem({super.key,required this.articles});
  Articles articles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        color: Theme.of(context).canvasColor,
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(8),
          side: BorderSide(
            color: Theme.of(context).cardColor,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                  child: Image.network(articles.urlToImage??"",height: 220,width: double.infinity,fit: BoxFit.fill,)),
              SizedBox(height: 16,),
              Text(articles.title??"",style: Theme.of(context).textTheme.titleMedium,),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("By:${articles.author!.length > 25 ? articles.author!.substring(0, 22) + '...' : articles.author}",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).primaryColor),),
                Text("${articles.publishedAt?.substring(0,10)??""}",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Theme.of(context).primaryColor),),
              ],),
            ],
          ),
        ),
      ),
    );
  }
}
