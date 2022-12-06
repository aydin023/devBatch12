public class ForEachLoopDemo1 {
    public static void iterateIntegerList() {
        List<integer> listInteger = new List<integer>();
        listInteger.add(10); //0  //index will always be integer!
        listInteger.add(15);//1
        listInteger.add(21);//2
        listInteger.add(15);//3
        listInteger.add(15);//4

        //print each element one by one. That is it

        for (integer eachInteger : listInteger) {
            System.debug(eachInteger);
        }
    }

    public static integer add(list<Integer> intList) {
        
        Integer returnInt = 0;

        for (integer eachInte : intList) {
            //add eachInte to returnInt
            System.debug('eachInte '+ eachInte);
            returnInt += eachInte;
            System.debug('return int '+ returnInt);
        }

        return returnInt;

        
    }
}
