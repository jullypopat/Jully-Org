public class AccountTriggerHandler {
    
    List<Account> recordNewList = new List<Account>();
    List<Account> recordOldList = new List<Account>();
    Map<Id, Account> recordNewMap = new Map<Id, Account>();
    Map<Id, Account> recordOldMap = new Map<Id, Account>();
    Boolean isInsert, isUpdate, isDelete, isUndelete = false;
    public static boolean recursionController = false;
    
    public AccountTriggerHandler(List<Account> newList, List<Account> oldList, Map<Id, Account> newMap, Map<Id, Account> oldMap) {
        this.recordNewList = newList;
        this.recordOldList = oldList;
        this.recordNewMap = newMap;
        this.recordOldMap = oldMap;
    }
    
    public void BeforeInsertEvent(){}
    
    public void BeforeUpdateEvent(){}
    
    public void BeforeDeleteEvent(){}
    
    public void AfterInsertEvent(){
    }
    
    public void AfterUpdateEvent(){
    }
    
    public void AfterDeleteEvent(){}
    
    public void AfterUndeleteEvent(){}
    

}