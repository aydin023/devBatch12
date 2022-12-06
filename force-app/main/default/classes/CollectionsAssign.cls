public class CollectionsAssign {
     public static String listassignment(Integer mnth) {
        List<String> lstMonth = new List<String>();
        String output_month;

        lstMonth.add('January');
        lstMonth.add('February');
        lstMonth.add('March');
        lstMonth.add('April');
        lstMonth.add('May');
        lstMonth.add('June');
        lstMonth.add('July');
        lstMonth.add('August');
        lstMonth.add('September');
        lstMonth.add('October');
        lstMonth.add('November');
        lstMonth.add('December');

        integer listSize=lstMonth.size();

        if(mnth<=0 || mnth>listSize) {
            output_month = 'Not a valid month';
        }else {
            output_month = lstMonth[mnth-1];
        }

        return output_month;
     }
}
