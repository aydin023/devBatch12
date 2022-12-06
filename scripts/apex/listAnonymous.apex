list<String> listStr = new List<String>();
if(listStr.isEmpty()){
    System.debug('List is empty. come on');
}

listStr.add('some string');
Boolean listIsEmpty = listStr.isEmpty();
if(!listStr.isEmpty()){
    System.debug('list is not empty');
}


List<integer> listInteger = new List<integer>();
        listInteger.add(19); //0  //index will always be integer!
        listInteger.add(4);//1
        listInteger.add(7);//2
        listInteger.add(2);//3
        listInteger.add(1);//4

        System.debug('before sort ' + listInteger);
        listInteger.sort();
        System.debug('after sort ' + listInteger);

        

