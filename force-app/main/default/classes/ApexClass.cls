public class ApexClass{       
        
    public Account record {get;set;}

    public  ApexClass(){
        record = new Account();
        String accId = ApexPages.currentPage().getParameters().get('id');
        String query ='SELECT Id, Name,Phone,Email__c,Address__c, (SELECT Id, FirstName, LastName, Phone, Email FROM Contacts) FROM Account where id =: accId';
        
        List<Account> accountlist = new List<Account>();
        accountlist = Database.query(query);
        
       
        system.debug('Testing ' +accountList);
}
    
}