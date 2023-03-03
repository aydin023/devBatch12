public with sharing class RestCallouts12Tr {
    public static void getUser() {
        // 1.request olusturmak 
        HttpRequest Request = new HttpRequest();
        Request.setEndpoint('https://reqres.in/api/users/2');
        Request.setMethod('GET');

        // 2. Bu requesti Apiye gonderip dondurdugu degeri yeni response degerini alma

        Http http = new Http();
        HttpResponse response =  http.send(Request);
        System.debug('Get Status => '+ response.getStatus());
        System.debug('Get status code => '+ response.getStatusCode());
        System.debug('Get body => '+ response.getBody());
        // response.getStatus();
        // response.getStatusCode();
        // response.getBody();

        // 3. bir data gelirse bu datanin icindeki verileri goruntuleme..
        if (response.getStatusCode() == 200) {
            String jsonUser = response.getBody();
            JSON.deserializeUntyped(jsonUser);
            Map<String,Object> userValue = (Map<String,Object>)JSON.deserializeUntyped(jsonUser);
            System.debug('value => '+ userValue);
            System.debug('data => '+ userValue.get('data'));
            System.debug('support => '+ userValue.get('support'));

            Map<String,Object> userInfo = (Map<String,Object>) userValue.get('data');
            System.debug('id => ' + userInfo.get('id'));
            System.debug('first_name => ' + userInfo.get('first_name'));
            System.debug('last_name => '+ userInfo.get('last_name') );
            System.debug('email => ' + userInfo.get('email'));
        }


    }
}