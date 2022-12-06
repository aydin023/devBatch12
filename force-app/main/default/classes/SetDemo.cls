public class SetDemo {
   public static void citySet() {
    Set<string> cities = new Set<string>();
    cities.add('Tokyo');
    cities.add('Lisbon');
    cities.add('Nairobi');
    cities.add('Berlin');
    cities.add('Nairobi');
    cities.add('Nairobi');
    cities.add('Tokyo');
    System.debug('Our cities '+cities);

   }

   public static void randomInteger() {
    Set<integer> integerSet = new Set<integer>();
    integerSet.add(10);
    integerSet.add(15);
    integerSet.add(21);
    integerSet.add(15);
    integerSet.add(15);
    System.debug(integerSet);
   }

   public static set<integer> setFromList(List<Integer> intList) {
    set<integer> setInt = new Set<Integer>();
    setInt.addAll(intList);
    return setInt;
   }

   public static set<string> uppercaseSet(Set<String> setStr) {
    set<String> returnSet = new set <String>();
    for (string eachStr : setStr) {
        String tempStr = eachStr.toUpperCase();
        returnSet.add(tempStr);
        System.debug(tempStr);
    }


    return returnset;
   }
}
