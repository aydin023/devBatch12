// Static v/s Non-Static Class 
 
// Create Class for addition of two integers 
// Pass two integer parameters to constructors 
// Create a non-static method to calculate addition of two integer 
// Create a static method to print total. 
 
// Execute in Anonymous: 
 
// Call Class 
// Pass parameters to constructors 
// Call methods 


public class StaticAndNonStatic {
    public Integer first;
    public integer second;
    public static Integer totall;
    
    public StaticAndNonStatic( Integer a, Integer b) {
        first=a;
        second=b;
        
    }
    public integer adition(){
        totall=first+second;
        return totall;
    }
    public static void printRslt(){
        System.debug(totall);
    }
}
