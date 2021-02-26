trigger opportunity1 on Opportunity (before insert) {
for(Opportunity record: Trigger.new) {
         record.StageName='Prospecting';   
         record.CloseDate=Date.TODAY()+15;

}

}