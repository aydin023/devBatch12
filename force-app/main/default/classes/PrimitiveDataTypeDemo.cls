public  class PrimitiveDataTypeDemo {
   public void printBasicDataType(){
    system.debug( 'printing data type');
    string batchName = 'Batch 12';
    integer totalCandidates = 69 ;
    boolean isAdminComplated = true;
    

    system.debug('batch name is ...' + batchName);
    system.debug('total candidates are..' + totalCandidates);
    system.debug(' is admin ' + isAdminComplated);

    Decimal decValue = 998.99;
    system.debug('decimal value is ' + decValue);

    long LongValue = 292929292L;
    system.debug('long value is..' + LongValue);
    
   }
   public void printBasicDataType2(){
    Object ob1 = 'string datatype in object';
    object ob2 = 77 ;
    object ob3 = true;

    system.debug(ob1);
    system.debug(ob2);
    system.debug(ob3);

    Id accId = '001Do000003DzZDIA0';
    system.debug('acc id is '+ accId);

}
}