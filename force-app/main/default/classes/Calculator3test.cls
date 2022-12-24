@isTest //is for class
public class Calculator3test {
    private static void aNormalMethod() {
        system.debug('this is still allowed');
    }

    //Test method features.
   //1. static.
   //2. void
   //3. no parameters
   //4. test method can be Public or Private. 
   @isTest //is for method
   private static void testMessage() {
        //call two methods from here
        Calculator3 c = new Calculator3();
        c.welcomeMessage();
        c.printNewMessage('printing from test method now.');
   }
   @isTest
   private static void testAdd1() {
    // integer i = 10;
    // integer j = 15;
    Calculator3 c = new Calculator3();
    integer sum1 = c.add(10, 15);
    System.assertEquals(25, sum1);
   }

   @isTest
   private static void testAdd21() {
    // integer i = 10;
    // integer j = 15;
    Calculator3 c = new Calculator3();
    integer sum1 = c.add(10, 15, 25);
    System.assertEquals(50, sum1);
   }
}