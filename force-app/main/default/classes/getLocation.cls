public with sharing class getLocation {
    @AuraEnabled(cacheable=true)
    public static List<Location__c> getLocationList(String searchKey) {
        
        String key = '%' + searchKey + '%';
        //Add isAccessible() check
        return   [SELECT Id, Name, City__c FROM Location__c WHERE City__c LIKE : key]  ;
    }
}