@isTest

private class PdfTestClass {
	
    static testMethod void TestApexClass() {
        
        Apexclass ac= new ApexClass();
       List<Account>account=new List<Account>();
        Account acc= new Account();
    
        acc.Name='pokl';
        acc.Phone='1134567890';
        acc.Email__c='abc@gmail.com';
        acc.Address__c='hhvjgkukgvyjm';
        insert acc;
        
        Contact cont = new Contact ();
       
        cont.FirstName = 'FirstName';
        cont.LastName = 'LastName';
        cont.Email='email@email.com';
        cont.phone='12345678';
        insert cont;
        
        Test.startTest();
             PdfTestClass ptc;
        Test.stopTest();
       

    }

}