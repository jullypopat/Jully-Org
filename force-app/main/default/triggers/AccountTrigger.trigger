trigger AccountTrigger on Account (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
AccountTriggerHandler handler=new AccountTriggerHandler(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
if(trigger.isBefore){
    if(trigger.isInsert){
        handler.BeforeInsertEvent();
    }else if(trigger.isUpdate){
        handler.BeforeUpdateEvent();
    }else if(trigger.isDelete){
        handler.BeforeDeleteEvent();
    }
}else if(trigger.isAfter){
    if(trigger.isInsert){
        handler.AfterInsertEvent();
    }else if(trigger.isUpdate){
        handler.AfterUpdateEvent();
    }else if(trigger.isDelete){
        handler.AfterDeleteEvent();
    }else if(trigger.isUndelete){
        handler.AfterUndeleteEvent();
    }
}

}