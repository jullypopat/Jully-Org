trigger Opportunity6 on Opportunity (Before insert,Before update) {
     Set<Id> userIds = new Set<Id>();
	 List<Task> taskList = new List<Task>();
    for(Opportunity o6:Trigger.new)
    {
        if(o6.Name!=Null)
        {
            Task tk=new Task();
            tk.WhatId=o6.OwnerId;
        }
    
    }

}