@isTest
public class Accounttest {
	static testMethod void TestSendEmailtoContact() {
        Account a=new Account();
        a.Name='pxjs';
        a.Email__c='popatjully@gmail.com';
        a.Ownership='Public';
        insert a;
        a=  [SELECT Id,Name,Ownership FROM Account WHERE Id = :a.Id];  
        update a;
        
        
       	Test.startTest();
			Account a1;
         Test.stopTest();
        
        System.assertEquals('Public', a.Ownership);
         
       
         
     }
}