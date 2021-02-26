public class AccountLocation {
    @AuraEnabled(cacheable=true)
    public static List<Account> AccountLocation(String accountNameInitial){
        String str = accountNameInitial + '%';
        return [SELECT Id, Name, Start_Location__c, End_Location__c
                FROM Account 
                WHERE Id=: ApexPages.currentPage().getParameters().get('id')];       
    }
}