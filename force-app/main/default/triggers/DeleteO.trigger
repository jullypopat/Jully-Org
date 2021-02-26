trigger DeleteO on Opportunity (before update) {
    List<Task> lTask = new List<Task>();
      Task t;
     
		for(Opportunity o: Trigger.new) 
        {
            if(o.Name!=Trigger.oldMap.get(o.Id).Name)
            {
                t=new Task();
                t.Subject='saccas';
               	t.Status='Not Started';
                t.Priority='Normal';
                t.WhatId=o.Id;
                lTask.add(t); 
			}
            insert lTask;
		}
     
                 
    }