public class ApexClass1{       
        
    public Account record {get;set;}

    public  ApexClass1(){
        record = new Account();
        String accId = ApexPages.currentPage().getParameters().get('id');
        String query ='SELECT Id, Name,Phone,Email__c,Address__c FROM Account where id =: accId';
        
        List<Account> accountlist = new List<Account>();
        accountlist = Database.query(query);
        
        if(accountList.size() > 0){
            record = accountList[0];
        }else{
            record = new Account();
        }
        system.debug('Testing ' +accountList);
}
    
}