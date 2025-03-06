import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/model/NewsResponse.dart';
import 'package:news/model/SourcesResponse.dart';

class ApiManager{



  static Future<SourcesResponse> getSources() async{
    Uri  url = Uri.https("newsapi.org","/v2/top-headlines/sources", {"apiKey":"0c53b310452b46fbac5a8d75fe228604"});
   http.Response response = await http.get(url);

   var json=jsonDecode(response.body);
   SourcesResponse sourcesResponse=SourcesResponse.fromJson(json);
   return sourcesResponse;


  }
  static Future<NewsResponse> getNews(String sourceId) async{
    Uri  url = Uri.https("newsapi.org","/v2/everything", {"apiKey":"0c53b310452b46fbac5a8d75fe228604","sources":sourceId});
    http.Response response = await http.get(url);

    var json=jsonDecode(response.body);
    NewsResponse newsResponse=NewsResponse.fromJson(json);
    return newsResponse;


  }
}