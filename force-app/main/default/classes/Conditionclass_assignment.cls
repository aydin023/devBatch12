public class Conditionclass_assignment {
    public String  Ifclassmethod ( Integer month){
        string  output_Month = '';

        if (month == 1) {
            output_Month='January';
        }else if (month == 2) {
            output_Month='February';
        } else {
            output_Month = 'Not a valid Month';
        }
        return output_Month;
    } 
    public String casemethod( String quarter){
        String output_Quarter = 'Enter a proper Month name';

        if (quarter == 'January' || quarter == 'February' ||
        quarter  == 'March' ) {
            output_Quarter = 'Quarter 1';
        } else {
            output_Quarter='Not a valid Quarter';
        }
        return output_Quarter;
    }  
}       
