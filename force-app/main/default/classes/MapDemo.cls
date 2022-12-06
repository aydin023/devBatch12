public class MapDemo {
    public static string retriveMonth(integer m) {
        string month = '';
        Map<integer, string> monthMap = new Map<integer, string>();
        monthMap.put(1, 'January');
        monthMap.put(2, 'February');
        monthMap.put(3, 'March');
        monthMap.put(4, 'April');
        monthMap.put(5, 'May');
        monthMap.put(6, 'June');
        monthMap.put(7, 'July');
        monthMap.put(8, 'August');
        monthMap.put(9, 'September');
        monthMap.put(10, 'October');
        monthMap.put(11, 'Novomber');
        monthMap.put(12, 'December');
        

        Boolean keyExist = monthMap.containsKey(m);
        if (keyExist) {
            month = monthMap.get(m);
        } else {
            month = 'No such month excist.Please';
        }
        
        
        return month;
    }
}


