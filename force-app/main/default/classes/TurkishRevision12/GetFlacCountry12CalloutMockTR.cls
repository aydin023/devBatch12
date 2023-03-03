public class GetFlacCountry12CalloutMockTR implements HttpCalloutMock {
    public HttpResponse respond(HttpRequest Request){
        //Response create edecegiz..
        HttpResponse response = new HttpResponse();
        response.setStatusCode(200);
        response.setStatus('OK');
        response.setHeader('Content-Type', 'application/json');
        response.setBody('[{"name":"Albania","topLevelDomain":[".al"],"alpha2Code":"AL","alpha3Code":"ALB","callingCodes":["355"],"capital":"Tirana","altSpellings":["AL","Shqipëri","Shqipëria","Shqipnia"],"subregion":"Southern Europe","region":"Europe","population":2837743,"latlng":[41.0,20.0],"demonym":"Albanian","area":28748.0,"gini":33.2,"timezones":["UTC+01:00"],"borders":["MNE","GRC","MKD","UNK"],"nativeName":"Shqipëria","numericCode":"008","flags":{"svg":"https://flagcdn.com/al.svg","png":"https://flagcdn.com/w320/al.png"},"currencies":[{"code":"ALL","name":"Albanian lek","symbol":"L"}],"languages":[{"iso639_1":"sq","iso639_2":"sqi","name":"Albanian","nativeName":"Shqip"}],"translations":{"br":"Albania","pt":"Albânia","nl":"Albanië","hr":"Albanija","fa":"آلبانی","de":"Albanien","es":"Albania","fr":"Albanie","ja":"アルバニア","it":"Albania","hu":"Albánia"},"flag":"https://flagcdn.com/al.svg","regionalBlocs":[{"acronym":"CEFTA","name":"Central European Free Trade Agreement"}],"cioc":"ALB","independent":true}]');

        return response;

    }
}