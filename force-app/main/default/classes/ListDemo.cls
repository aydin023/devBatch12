public class ListDemo {
    public static String candidatesList(Integer i) {
        list<string> listCandidates = new list<String>();
        listCandidates.add('Marc'); //0
        listCandidates.add('Elon'); //1
        listCandidates.add('Bill'); //2
        listCandidates.add('Elon'); //3
        listCandidates.add('Jeff'); //4

        System.debug(' List of candidates '+ listCandidates);

        string returnString= '';
        Integer sizeOfList =listCandidates.size();
        if (i>=0 && i<sizeOfList) {
            returnString=listCandidates[i];
        }else {
            returnString = 'No values found. Stay in limits';
        }
        return returnString;
    }

    public static void rondomIntegerList() {
        List<integer> listInteger = new List<integer>();
        listInteger.add(19); //0  //index will always be integer!
        listInteger.add(29);//1
        listInteger.add(69);//2
        listInteger.add(29);//3
        listInteger.add(99);//4

        Integer valueAt3Index = listInteger.get(3);
        //or
        Integer valueAt3Index2= listInteger[9];
        
        System.debug('rondom integer list '+ listInteger);
        System.debug('value at index 3 '+ valueAt3Index);
        System.debug('2nd version' + valueAt3Index2);
    }

    public static void allCats() {
        List<cat> listCat = new List<cat>();
        //we can add instance of CAT
        cat batch12Cat = new cat('fluffykins', 'white');
        cat batch12Cat2 = new cat('simba', 'brown');
        cat batch12Cat3 = new cat('shiba', 'red');
        listCat.add(batch12Cat);
        listCat.add(batch12Cat2);
        listCat.add(batch12Cat3);
        System.debug('List of cat '+ listCat);
    }
}
