//JSON: JavaScript Object Notation

//1 Student Single Record
{
     "Name"  :  "Bala",
     "Age"   :  30,
     "Title" : "unemployed",
     "Salary": -13000.50
}

//2 students detail records in JSON format

[
    {
        "Name" : "Bala",
        "Age" : "30",
        "Title" : "Arcitect",
        "Salary" : 3000.50,

    },
    {
        "Name"  :  "Bala",
        "Age"   :  30,
        "Title" : "unemployed",
        "Salary": -13000.50
    }
]

// Get an account record and convert the same into JSON format
Account acc = [ select name, Type, Industry, AnnualRevenue FROM account where annualRevenue != null AND TYPE != NULL AND Industry != Null limit 1];
String jsonString = JSON.serialize(acc);
System.debug(jsonString);



//Get 4 accounts and covert the same into JSON format
List<Account> accounts = [SELECT Name, Type, Industry, AnnualRevenue
                        FROM Account
                        WHERE AnnualRevenue != null
                        AND Type != null
                        AND Industry != null
                        LIMIT 4];
String jsonString = JSON.serialize(accounts);
System.debug(jsonString);



//Callouts Test
RestCallouts.getAnimaLS();
RestCallouts.getAirlines();
RestCallouts.getEmployees();
RestCallouts.getCasesUsingNC();
RestCallouts.postAnimal();

SoapCallouts.parksCallout('India');
SoapCallouts.doAddCallout(5,10);
SoapCallouts.doMultiplyCallout(5, 10);

//solution design
