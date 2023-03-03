//hata 1
    // account acc = new account();
    // insert acc;

//duzeltilmis sekli
try{
    account acc = new account();
    insert acc;
} catch(DmlException de){
    System.debug(de);
    System.debug('hello dmlexeption');
}
catch(Exception e){
    System.debug(e);
    System.debug('hello exeption');
}

//hata 2
    //  list<string> list1;//bu listenin valuesu null
    // string a = list1[0];
    // system.debug(a);

try{
    list<string> list1;//bu listenin valuesu null
    string a = list1[0];
    system.debug(a);
}
catch(DmlException de){
    System.debug(de);
    System.debug('hello dmlexeption');
}
catch(NullPointerException npe){
    System.debug(npe);
    System.debug('hello null list exeption');
}
catch(Exception ex){
    System.debug(ex);
    System.debug('hello exeption');
}

// hata 3

    // list<string> list1 = new list<string>();
    // string a = list1[0];
    // system.debug(a);

try{
    list<string> list1 = new list<string>();
    string a = list1[0];
    system.debug(a);
}
catch(DmlException de){
    System.debug(de);
    System.debug('hello dmlexeption');
}
catch(NullPointerException npe){
    System.debug(npe);
    System.debug('hello null list exeption');
}
catch(ListException lex){
    System.debug(lex);
    System.debug('hello  list exeption');
}
catch(Exception ex){
    System.debug(ex);
    System.debug('hello exeption');
}




//=========  Explanation  ==========

Common Exception Methods()

getCause: Returns the cause of the exception as an exception object.
getLineNumber: Returns the line number from where the exception was thrown.
getMessage: Returns the error message that displays for the user.
getStackTraceString: Returns the stack trace of a thrown exception as a string.
getTypeName: Returns the type of exception, such as DmlException, ListException, MathException, and so on.

 catch(Exception e) {
    System.debug('Exception type caught: ' + e.getTypeName());    
    System.debug('Message: ' + e.getMessage());    
    System.debug('Cause: ' + e.getCause());    // returns null
    System.debug('Line number: ' + e.getLineNumber());    
    System.debug('Stack trace: ' + e.getStackTraceString());    
}


