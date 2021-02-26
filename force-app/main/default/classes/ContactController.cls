public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactList(String searchKey) {
        
        String key = '%' + searchKey + '%';
        //Add isAccessible() check
        return   [SELECT Id, Name, MailingStreet, Phone, Email, LeadSource FROM Contact WHERE Name LIKE:key]  ;
    }
}