@isTest
private class FirstClassTest {

	private static testMethod void testFirstClass() {
	     List<Account>account=new List<Account>();
    
    Account acc=new Account();
    	acc.Name='pokl';
        acc.Phone='1134567890';
        acc.Email__c='abc@gmail.com';
        acc.Address__c='hhvjgkukgvyjm';
        insert acc;
    account.add(acc);
    Test.startTest();
        Test.stopTest();

	}

}