@isTest
public class TestClass {
     static testMethod void ApexClass() {
        Test.startTest();
       Account Acc = new Account(Name='Abc',Phone='1234567890',Email__c='Abc@gmail.com',Address__c='vgyjbajgdb');
      
       System.debug('Account name=>' +Acc.Name+ 'Account Phone=>' +Acc.Phone+'Account Email=>' +Acc.Email__c+'Account Address=>' +Acc.Address__c );
        insert Acc;
       		 PageReference testPage = new pagereference('/apex/VisualforcePage');
       		 ApexPages.currentPage().getParameters().put( 'id', acc.id );
	
 			ApexClass1 testa=new ApexClass1();
 
        Test.stopTest();
       

    }


}