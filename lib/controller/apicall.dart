import 'dart:convert' as convert show jsonDecode;

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/core/staticfile.dart';
import 'dart:convert';
import 'package:untitled/model/news.dart';
class Apicall {
  Future<News?>?
  getnewsdata() async{
    //exception handling
    try{
      // ?q=apple
      // &sortBy=popularity
      // &apiKey=a25a0c0b883c4f389ff5c23da0f9dfea
     var url = Uri.https(
       Staticfile.baseUrl,
       Staticfile.path,
       {'q': 'apple',
       'sortBy': 'popularity',
       'apikey': Staticfile.apikey});
         var response = await http.get(url);

         if(response.statusCode.toString().contains("20")){
           //parse
           var jsonresponse = convert.jsonDecode(response.body);
           var newsdata = News.fromJson(jsonresponse);
           return newsdata;

         }else{
           //failure
           return null;
         }
         if(kDebugMode) {
           print(response.body);
         }
  }catch(e){
     return null;
    }
  }
}