class Adv {
  String parseServerID;
  String ad_url;
  String ad_img;
  String ad_snippet;

  Adv({this.parseServerID,this.ad_url,this.ad_img,this.ad_snippet});

  Map<String ,dynamic> toMap(){
    var map = <String, dynamic>{
      'parseServerID' : parseServerID,
      'ad_url' : ad_url,
      'ad_img' : ad_img,
      'ad_snippet' : ad_snippet,
    };
    return map;
  }

  Adv.fromMap(Map<String , dynamic> map)
  {
    parseServerID = map['parseServerID'];
    ad_url = map['ad_url'];
    ad_img = map['ad_img'];
    ad_snippet = map['ad_snippet'];
  }




}